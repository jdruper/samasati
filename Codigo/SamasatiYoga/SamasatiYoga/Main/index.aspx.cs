using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Net;

namespace SamasatiYoga.Main
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SmtpClient mySmtpClient = new SmtpClient("mail.samasatiyoga.com");

                mySmtpClient.UseDefaultCredentials = false;
                //mySmtpClient.EnableSsl = false;
                mySmtpClient.Credentials = new NetworkCredential("contactform@samasatiyoga.com", "contactform2012");

                MailAddress from = new MailAddress("contactform@samasatiyoga.com");
                MailAddress to = new MailAddress("administrator@samasatiyoga.com");
                StringBuilder message = new StringBuilder("Information :");
                message.AppendLine(" Email contact: " + txtEmail.Text);
                message.AppendLine(" Name contact:  " + txtName.Text);


                MailMessage myMail = new MailMessage(from, to);
                myMail.To.Add(new MailAddress("chisco420@gmail.com"));
                myMail.Subject = "Samasati Yoga contact form";
                myMail.SubjectEncoding = Encoding.UTF8;
                myMail.Body = message.ToString();
                myMail.BodyEncoding = Encoding.UTF8;
                myMail.IsBodyHtml = true;
                {
                    mySmtpClient.Send(myMail);
                    txtName.Text = "Name: ";
                    txtEmail.Text = "E-mail : ";
                }
            }

            catch (SmtpException ex)
            {
                
            }
            catch (Exception ex)
            {
                
            }

        }

    }
}
