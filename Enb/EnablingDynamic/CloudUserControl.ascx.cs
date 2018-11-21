using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class CloudUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            string email = Session["Email"].ToString();
            DataTable dt = new DataTable();
            dt = DataAccess.GetInstance().Cloud_UserReg_get__User_Info_By_Email(email);
            if (dt.Rows.Count > 0)
            {
                LblUser.Text = dt.Rows[0]["CloudUserReg_Name"].ToString();
            }
        }
    }
}