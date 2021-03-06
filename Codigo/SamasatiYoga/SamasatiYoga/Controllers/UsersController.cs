﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamasatiYoga.Helpers;
using SamasatiYoga.Models;
using System.Net;
using System.IO;

namespace SamasatiYoga.Controllers
{
    public class UsersController : Controller
    {
        UserRepository userRepository = new UserRepository();
        int courseId = 0;

        //
        // GET: /Users/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Register(int id)
        {            
            var course = (new CourseRepository()).GetCourse(id);
            var user = new User { State = "0", Gender = 'A', CurrentCourse = id };

            ViewData.Add("costs", course.Costs);
            ViewData.Add("fieldData", "0,,,,0");
            ViewData.Add("courseId", id.ToString());
            return View(user);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Register(User user, FormCollection collection)
        {
            string courseId = "";
            try
            {
                courseId = Request["CourseId"];
                user.ExpirationDate = String.Format("{0}{1}", Request["ExpirationMonth"].ToString(), Request["ExpirationYear"].ToString());
                
                var response = "";
                if (user.IsValid)
                {
                    response = Authorize(user, Convert.ToInt32(courseId));
                    userRepository.Add(user);
                    userRepository.Save();
                }
                else
                {
                    throw new Exception();
                }

                ViewData.Add("authResponse", response);
                return View("RegisterResponse");
            }
            catch
            {
                var fieldData = string.Format("{0},{1},{2},{3},{4}", user.State ?? "", user.Gender ?? '0', user.Age ?? "", user.SelectedPrice, user.BillingInformation.State ?? "0");
                ViewData.Add("fieldData", fieldData);
                ViewData.Add("courseId", courseId);
                ModelState.AddRuleViolations(user.GetRuleViolations());
                return View(user);
            }
        }

        private String Authorize(User user, int courseId)
        {
            try
            {
                String post_url = "https://secure.authorize.net/gateway/transact.dll";

                Dictionary<string, string> post_values = new Dictionary<string, string>();
                //the API Login ID and Transaction Key must be replaced with valid values
                post_values.Add("x_login", "5uZ2A8gs");
                post_values.Add("x_tran_key", "727PwFdPWKK437x4");
                post_values.Add("x_delim_data", "TRUE");
                post_values.Add("x_delim_char", "|");
                post_values.Add("x_relay_response", "FALSE");
                post_values.Add("x_test_request", "TRUE");

                post_values.Add("x_type", "AUTH_CAPTURE");
                post_values.Add("x_method", "CC");
                post_values.Add("x_card_num", user.CardNumber);
                post_values.Add("x_exp_date", user.ExpirationDate);

                post_values.Add("x_amount", user.SelectedPrice.ToString());
                post_values.Add("x_description", "Samasati Yoga Course");

                post_values.Add("x_first_name", user.BillingInformation.FirstName);
                post_values.Add("x_last_name", user.BillingInformation.LastName);
                post_values.Add("x_address", user.BillingInformation.BillingAddress);
                post_values.Add("x_state", user.BillingInformation.State);
                post_values.Add("x_zip", user.BillingInformation.ZipPostalCode);
                post_values.Add("x_email", user.Email);                

                // Additional fields can be added here as outlined in the AIM integration
                // guide at: http://developer.authorize.net

                // This section takes the input fields and converts them to the proper format
                // for an http post.  For example: "x_login=username&x_tran_key=a1B2c3D4"
                String post_string = "";

                foreach (KeyValuePair<string, string> post_value in post_values)
                {
                    post_string += post_value.Key + "=" + HttpUtility.UrlEncode(post_value.Value) + "&";
                }
                post_string = post_string.TrimEnd('&');

                // The following section provides an example of how to add line item details to
                // the post string.  Because line items may consist of multiple values with the
                // same key/name, they cannot be simply added into the above array.
                //
                // This section is commented out by default.
                /*
                string[] line_items = {
                    "item1<|>golf balls<|><|>2<|>18.95<|>Y",
                    "item2<|>golf bag<|>Wilson golf carry bag, red<|>1<|>39.99<|>Y",
                    "item3<|>book<|>Golf for Dummies<|>1<|>21.99<|>Y"};
	
                foreach( string value in line_items )
                {
                    post_string += "&x_line_item=" + HttpUtility.UrlEncode(value);
                }
                */

                // create an HttpWebRequest object to communicate with Authorize.net
                HttpWebRequest objRequest = (HttpWebRequest)WebRequest.Create(post_url);
                objRequest.Method = "POST";
                objRequest.ContentLength = post_string.Length;
                objRequest.ContentType = "application/x-www-form-urlencoded";

                // post data is sent as a stream
                StreamWriter myWriter = null;
                myWriter = new StreamWriter(objRequest.GetRequestStream());
                myWriter.Write(post_string);
                myWriter.Close();

                // returned values are returned as a stream, then read into a string
                String post_response;
                HttpWebResponse objResponse = (HttpWebResponse)objRequest.GetResponse();
                using (StreamReader responseStream = new StreamReader(objResponse.GetResponseStream()))
                {
                    post_response = responseStream.ReadToEnd();
                    responseStream.Close();
                }

                // the response string is brocoken into an array
                // The split character specified here must match the delimiting character specified above
                String[] response_array = post_response.Split('|');

                user.UserCourses.Add(new UserCourse { AuthResponse = post_response });
                
                return ValidateResponse(user, courseId, response_array[0], response_array[2], response_array[3], response_array[6], response_array[7],
                    response_array[8], response_array[9], response_array[23], response_array[50]);
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        private string ValidateResponse(User user, int courseId, string responseCode, string responseReasonCode, string responseReasonText, string transactionID,
             string invoiceNumber, string descripcion, string amount, string costumerEmail, string accountNumber)
        {
            var declinedResponseCodes = new string[] { "6", "7", "8", "11", "17", "18", "19", "20", "21", "22", "23", "25", "26", "27", 
                "44", "45", "57", "58", "59", "60", "61", "62", "63", "78", "117" };
            var response = "<h2>Transaction Output</h2>\n";

            if (responseCode == "1")
            {
                response += "<p>Your transaction has been approved!</p>";
                response += "<p>" + descripcion + " has been successfully charged to your account.</p>";
                response += "<p>Your Transaction ID is: " + transactionID + ".</p>";
                response += "<p>Your Invoice Number is: " + invoiceNumber + ".</p>";
                response += "<p>The amount of: " + amount + " has been charged to this account: " + accountNumber + ".</p>";
                response += "<p>A confirmation Email with this data will be sent to: " + costumerEmail + ".</p>";
               
                user.UserCourses[0].UserId = user.UserId;
                user.UserCourses[0].CourseId = courseId;
                user.UserCourses[0].Price = user.SelectedPrice;
                user.UserCourses[0].PaymentDate = DateTime.Now;               
            }
            else if (responseCode == "2")
            {
                //declined no hay mucho q hacer mas q decir q fue declined, please check your data and try again
                response += "<p>Your transacion has been declined, please check your data and try again.<p>";
                response += "<p>If the problem persists, please contact us.<p>";

                user.UserCourses.Clear();

            }
            else if (responseCode == "3")
            {
                response += "<p>There was an error with your transacion, the error is the following:<p>";
                if (declinedResponseCodes.Contains(responseReasonCode))
                {
                    response += "<p>" + responseReasonText + "</p>";
                }
                else
                {
                    response += "<p>There is an internal error with your transaction, please try again.</p>";
                }
                response += "<p>If the problem persists, please contact us.<p>";

                user.UserCourses.Clear();
            }
            else if (responseCode == "4")
            {
                response += "<p>Your transaction has been held for approval.<p>";
                response += "<p>Please contact us for further detail.<p>";

                user.UserCourses[0].UserId = user.UserId;
                user.UserCourses[0].CourseId = courseId;
                user.UserCourses[0].Price = user.SelectedPrice;
                user.UserCourses[0].PaymentDate = DateTime.Now;
            }
            
            return response;
        }

    }
}
