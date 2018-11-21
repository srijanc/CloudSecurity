using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_DataAccessLayer;
using System.Data;

public partial class TTPLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().TPA_Authenticate(TxtUserName.Text.Trim(), TxtPassword.Text.Trim());
        if (dt.Rows.Count > 0)
        {
            Session["TPAEmail"] = TxtUserName.Text;
            Session["Id"] = dt.Rows[0]["TPA_Id"].ToString();
            Response.Redirect("TPAGetFiles.aspx");
        }
        else
        { 
            Utils.ShowAlertMessage("Invalid Username and Password");
        }
    }
}