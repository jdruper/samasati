using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamasatiYoga.Helpers;
using SamasatiYoga.Models;

namespace SamasatiYoga.Controllers
{
    public class UsersController : Controller
    {
        UserRepository userRepository = new UserRepository();

        //
        // GET: /Users/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Register(int id)
        {
            var course = (new CourseRepository()).GetCourse(id);
            var user = new User { State = "0", Gender='A' };

            ViewData.Add("costs", course.Costs);
            ViewData.Add("fieldData", "0,,,,0");
            return View(user);
        }

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Register(User user, FormCollection collection)
        {
            try
            {
                //var coursePrices = Request["CoursePrices"];

                //if (!String.IsNullOrEmpty(coursePrices))
                //{                    
                    //var prices = coursePrices.Split(',');

                //    for (int i = 0; i < prices.Count(); i++)
                //    {
                //        course.Costs.Add(new Cost { CourseId = course.CourseId, Description = descriptions[i], Price = Convert.ToDecimal(prices[i].Replace(".", ",")) });
                //    }
                //}

                if (user.IsValid)
                {
                    userRepository.Add(user);
                    userRepository.Save();
                }
                else
                {
                    throw new Exception();
                }

                return RedirectToAction("Courses/Index");
            }
            catch
            {
                var fieldData = string.Format("{0},{1},{2},{3},{4}", user.State ?? "", user.Gender ?? '0', user.Age ?? "", user.SelectedPrice, user.BillingInformation.State ?? "0");
                ViewData.Add("fieldData", fieldData);
                ModelState.AddRuleViolations(user.GetRuleViolations());
                return View(user);
            }
        }

    }
}
