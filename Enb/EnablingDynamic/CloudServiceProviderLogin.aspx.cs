using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CloudServiceProviderLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (TxtUserName.Text.Trim().ToLower() == "admin" && TxtPassword.Text.Trim().ToLower() == "admin")
        {
            Response.Redirect("CheckUserReg.aspx");
        }
        else
        {
            Utils.ShowAlertMessage("Invalid User Name and Password");
        
        }
    }
}