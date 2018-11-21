﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Online_DataAccessLayer;
using System.Data;

public partial class CheckUserReg : System.Web.UI.Page
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
        dt = DataAccess.GetInstance().Cloud_UserReg_get_User_Info();
        if (dt.Rows.Count > 0)
        {
            grvADview.DataSource = dt;
            grvADview.DataBind();
        }
    }
    protected void grvADview_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grvADview.PageIndex = e.NewPageIndex;
        LoadGrid();
    }
    protected void grvADview_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        
        if (e.CommandName.Equals("Approve"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            HiddenField Email = (HiddenField)row.Cells[0].FindControl("hndemail");
            if (DataAccess.GetInstance().Cloud_UserReg_Approve_Cloud_User(Convert.ToInt32(e.CommandArgument)))
            {
                MailSending mail = new MailSending();
                mail.SendMail(Email.Value,"You Have Sucessfully Registered to Cloud","Cloud Service Provider");
                Utils.ShowAlertMessage("User Approved");
                Response.Redirect("CheckUserReg.aspx");
                
            }
        }
        if (e.CommandName.Equals("moreinfouser"))
        {
            GridViewRow row = (GridViewRow)(((ImageButton)e.CommandSource).NamingContainer);
            Label LblName = (Label)row.Cells[3].FindControl("LblName");
            Label LblEmail = (Label)row.Cells[4].FindControl("LblEmail");
            Label LblPhone = (Label)row.Cells[5].FindControl("LblPhone");
            Label LblCity = (Label)row.Cells[6].FindControl("LblCity");
            Label LblState = (Label)row.Cells[7].FindControl("LblState");
            Label LblCountry = (Label)row.Cells[8].FindControl("LblCountry");
            string info = "Name : " + LblName.Text + "\\n" +
                "Email : " + LblEmail.Text + "\\n" +
                    "Phone : " + LblPhone.Text + "\\n" +
                        "City : " + LblCity.Text + "\\n" +
                    "State : " + LblState.Text + "\\n" +
                        "Country : " + LblCountry.Text + "\\n";
            Utils.ShowAlertMessage(info);
                            
        }
        if (e.CommandName.Equals("Delete"))
        {
            if (DataAccess.GetInstance().Cloud_UserReg_Delete_User_Info(Convert.ToInt32(e.CommandArgument)))
            {
                Utils.ShowAlertMessage("Deleted Successfully");
                LoadGrid();
            }
        }
    }
    protected void grvADview_RowDataBound(object sender, GridViewRowEventArgs e)
    {

    }
    protected void grvADview_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grvADview_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}