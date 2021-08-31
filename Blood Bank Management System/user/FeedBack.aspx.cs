using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_Bank_Management_System.user
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            string ra;
            if (rd1.Checked)
                ra = rd1.Text;
            else if (rd2.Checked)
                ra = rd2.Text;
            else if (rd3.Checked)
                ra = rd3.Text;
            else
                ra = rd4.Text;

            string rb;
            if (rd5.Checked)
                rb = rd5.Text;
            else if (rd6.Checked)
                rb = rd6.Text;
            else if (rd7.Checked)
                rb = rd7.Text;
            else
                rb = rd8.Text;
            qry = "insert into FeedBack(Nam,email,num,RateOverall,RateWebsite,Suggestion) values('" + txtName.Text + "','" + txtEmail.Text + "'," + txtNumber.Text + ",'" + ra + "','" + rb + "','" + txtArea.Text + "')";
            SqlCommand cmd = new SqlCommand(qry, cn);
           cmd.ExecuteNonQuery();

            Response.Write("<script> alert('Submited')  <script>");
            Response.Redirect("UserHome.aspx");

        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            cn.Close();
        }
    }
}