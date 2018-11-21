using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class UserRequestForFile : System.Web.UI.Page
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
        dt = DataAccess.GetInstance().UserRequest_Get_User_File_Request_By_Email(Email);
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
    protected void GridFileView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        string Email = Session["Email"].ToString();
        if (e.CommandName.Equals("Accept"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label LblEmail = (Label)row.Cells[2].FindControl("LblEmail");
            Label LblFileName = (Label)row.Cells[1].FindControl("LblFileName");
            HiddenField HiddenKey = (HiddenField)row.Cells[3].FindControl("HiddenKey");
            if (DataAccess.GetInstance().UserRequest_Accept_User_File_Request(Convert.ToInt32(e.CommandArgument),Email,LblEmail.Text))
            {
                
                MailSending mail = new MailSending();
                mail.SendMail(LblEmail.Text, "Your request for the file : " + LblFileName.Text + "\\n Secret Key is " + HiddenKey.Value.ToString(), "Cloud User Request Accepted");
                LoadGrid();
                Utils.ShowAlertMessage("Request Accepted");
            }
        }
    }
}