using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text;

namespace SamasatiYoga.Main
{
    public partial class SignUpEmail : System.Web.UI.Page
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
                MailAddress to = new MailAddress("chisco420@gmail.com");

                using (
                    MailMessage myMail = new MailMessage(from, to)
                    {
                        Subject = "NADA KE DECIR",
                        SubjectEncoding = Encoding.UTF8,
                        Body = "LO KE SE DIRIA",
                        BodyEncoding = Encoding.UTF8,
                        IsBodyHtml = true
                    })
                {
                    mySmtpClient.Send(myMail);
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
