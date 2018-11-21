using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class TPAControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string Id = Session["Id"].ToString();
            DataTable dt = new DataTable();
            dt = DataAccess.GetInstance().Get_TPA_By_Id(Convert.ToInt32(Id));
            if (dt.Rows.Count > 0)
            {

                LblUser.Text = dt.Rows[0]["TPA_Name"].ToString();
                
            }
        }
    }
}