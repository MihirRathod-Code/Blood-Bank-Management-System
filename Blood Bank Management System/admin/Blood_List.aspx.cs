using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_Bank.admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataAdapter adpt;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            //qry = "Select * from BloodGroup";
            //adpt = new SqlDataAdapter(qry, cn);
            //DataTable dt = new DataTable();
            //adpt.Fill(dt);
            //DropDownList1.DataSource = dt;
            //DropDownList1.DataBind();
            //DropDownList1.DataTextField = "Grp";
            //DropDownList1.DataValueField = "ID";
            //DropDownList1.DataBind();



           

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Response.Write("<script> alert ('Hey') </script>");
            //SqlDataSource1.SelectCommand = "SELECT User_Master.UserId, User_Master.Fname, User_Master.Lname, User_Master.Email, User_Master.Gender, User_Master.Address, User_Master.City, User_Master.Pin, User_Master.Age, User_Master.ContactNo, User_Master.Weight, User_Master.Date, BloodGroup.Grp, BloodLtr.ml, BloodLtr.DonateDate, BloodLtr.ExpireDate FROM User_Master INNER JOIN BloodGroup ON User_Master.BloodGroup = BloodGroup.Id INNER JOIN BloodLtr ON User_Master.UserId = BloodLtr.UserId AND BloodGroup.Id = BloodLtr.BldId WHERE (BloodGroup.Grp = '" + DropDownList1.SelectedItem + "')";
            //SqlDataSource1.DataBind();
            //Repeater1.DataSourceID = "SqlDataSource1";

            //Repeater1.DataBind();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            cn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script> alert ('Hey') </script>");
            SqlDataSource1.SelectCommand = "SELECT User_Master.UserId, User_Master.Fname, User_Master.Lname, User_Master.Email, User_Master.Gender, User_Master.Address, User_Master.Pin, User_Master.Age, User_Master.ContactNo, User_Master.Weight, User_Master.Date, User_Master.Status, BloodGroup.Grp, BloodLtr.BldId, BloodLtr.DonateDate, BloodLtr.ExpireDate, BloodLtr.ml, BloodLtr.Id AS BID, User_Master.City FROM User_Master INNER JOIN  BloodGroup ON User_Master.BloodGroup = BloodGroup.Id INNER JOIN BloodLtr ON User_Master.UserId = BloodLtr.UserId AND BloodGroup.Id = BloodLtr.BldId WHERE(BloodGroup.Grp = '" + DropDownList1.SelectedItem + "' OR BloodGroup.Id=" + DropDownList1.SelectedValue + ")";
            SqlDataSource1.DataBind();
            Repeater1.DataSourceID = "SqlDataSource1";

            Repeater1.DataBind();
        }

        protected void btnall_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT User_Master.UserId, User_Master.Fname, User_Master.Lname, User_Master.Email, User_Master.Gender, User_Master.Address, User_Master.Pin, User_Master.Age, User_Master.ContactNo, User_Master.Weight, User_Master.Date, User_Master.Status, BloodGroup.Grp, BloodLtr.BldId, BloodLtr.DonateDate, BloodLtr.ExpireDate, BloodLtr.ml, BloodLtr.Id AS BID, User_Master.City FROM User_Master INNER JOIN  BloodGroup ON User_Master.BloodGroup = BloodGroup.Id INNER JOIN BloodLtr ON User_Master.UserId = BloodLtr.UserId AND BloodGroup.Id = BloodLtr.BldId";
            SqlDataSource1.DataBind();
            Repeater1.DataSourceID = "SqlDataSource1";

            Repeater1.DataBind();
        }
    }
}