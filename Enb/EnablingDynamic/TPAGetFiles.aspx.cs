using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class TPAGetFiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGrid();
        }
    }
    public void LoadGrid()
    {
        string Email = Session["TPAEmail"].ToString();
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().Files_Get_TPA_Files(Email);
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
    protected void GridFileView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Send"))
        { 
            //send request cloud user
            if (DataAccess.GetInstance().TPARequest_add_TPA_Request(Convert.ToInt32(e.CommandArgument)))
            {
                LoadGrid();
                Utils.ShowAlertMessage("Request Sent");
            }


        }
    }
}