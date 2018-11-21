using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Online_DataAccessLayer;

public partial class RequestByTPA : System.Web.UI.Page
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
        string Email = Session["Email"].ToString();
        DataTable dt = new DataTable();
        dt = DataAccess.GetInstance().Files_Get_TPA_Requsted_Sent_Files(Email);
        if (dt.Rows.Count > 0)
        {
            GridFileView.DataSource = dt;
            GridFileView.DataBind();
        }
    }
    protected void GridFileView_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName.Equals("Accept"))
        {
            if (DataAccess.GetInstance().TPARequest_Update_TPA_Request(Convert.ToInt32(e.CommandArgument)))
            {
                MailSending mail = new MailSending();
                GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
                Label LblUserName = (Label)row.Cells[0].FindControl("LblUserName");
                HiddenField HiddenKey = (HiddenField)row.Cells[1].FindControl("HiddenKey");
                Label LblFileName = (Label)row.Cells[2].FindControl("LblFileName");
                Label LblEmail = (Label)row.Cells[3].FindControl("LblEmail");
                HiddenField HiddenCloudUserName = (HiddenField)row.Cells[3].FindControl("HiddenCloudUserName");
                string body = "Cloud User : " + HiddenCloudUserName.Value.ToString() + "\\n File Name : " + LblFileName.Text + "\\n secret Key : " + HiddenKey.Value.ToString();
                mail.SendMail(LblEmail.Text, body, "Cloud User Accepted File Request");
                LoadGrid();
                Utils.ShowAlertMessage("Key has been sent to TPA");
            }
        }
    }
}