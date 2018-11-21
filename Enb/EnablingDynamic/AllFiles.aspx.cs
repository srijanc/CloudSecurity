using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class AllFiles : System.Web.UI.Page
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
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().Files_Get_All_Approved_Files();
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
    protected void GridFileView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string Email = Session["Email"].ToString();   
        if (e.CommandName.Equals("Send"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
                Label LblUserName = (Label)row.Cells[0].FindControl("LblUserName");
            ImageButton imgappbutt = (ImageButton)row.Cells[3].FindControl("imgappbutt");
            if (imgappbutt.ImageUrl == "~/images/send_request_button.png")
            {
                if (DataAccess.GetInstance().UserRequest_add_User_File_Request(Convert.ToInt32(e.CommandArgument),Email))
                {
                    imgappbutt.ImageUrl = "~/images/Request_sent.png";
                    Utils.ShowAlertMessage("Request Sent to Cloud User");
                }
            }
        }
    }
    protected void GridFileView_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        string Email = Session["Email"].ToString();
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            HiddenField Id = (HiddenField)e.Row.FindControl("HiddenFiles_Id");
            ImageButton img = (ImageButton)e.Row.FindControl("imgappbutt");
            DataTable dt = new DataTable();
            dt = DataAccess.GetInstance().UserRequest_Check_User_File_Request_By_Id(Convert.ToInt32(Id.Value), Email);
            if (dt.Rows.Count > 0)
            {
                img.ImageUrl = "~/images/Request_sent.png";
            }
            else
            {
                img.ImageUrl = "~/images/send_request_button.png";
            }
        }
    }
}