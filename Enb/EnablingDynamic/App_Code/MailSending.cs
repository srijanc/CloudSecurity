using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Net.Mail;

/// <summary>
/// Summary description for MailSending
/// </summary>
public class MailSending
{
    public MailSending()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public void SendMail(string emailiduser, string Body, string subjecttext)
    {

        string emailid = emailiduser;//to user
        string Subject = subjecttext;
        string mailtext = Body;
        System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
        msg.To.Add(emailid);
        //   msg.To.Add(emailidinfo);
        msg.From = new MailAddress("bits.clouds@gmail.com", Subject, System.Text.Encoding.UTF8);
        msg.Subject = Subject;
        msg.SubjectEncoding = System.Text.Encoding.UTF8;
        msg.Body = mailtext;
        msg.BodyEncoding = System.Text.Encoding.UTF8;
        msg.IsBodyHtml = true;
        msg.Priority = MailPriority.High;

        //Add the Creddentials
        SmtpClient client = new SmtpClient();
        client.Credentials = new System.Net.NetworkCredential("bits.clouds@gmail.com", "4ni10cs045");
        client.Port = 25;//or use 587            
        client.Host = "smtp.gmail.com";
        client.EnableSsl = true;
        object userState = msg;
        try
        {
            client.Send(msg);
        }
        catch (Exception ex)
        {

        }
    }

}
