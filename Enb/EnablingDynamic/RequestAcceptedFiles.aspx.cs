using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class RequestAcceptedFiles : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadGrid();

        }
    }
    protected void LoadGrid()
    {
        string Email = Session["Email"].ToString();
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().UserRequest_Get_User_Request_Accepted_Files(Email);
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
    protected void GridFileView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("download"))
        {
            Response.Redirect("UserEnterKeyToDownload.aspx?File_Id=" + e.CommandArgument);
        }
    }
}