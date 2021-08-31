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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            qry = "insert into ContactUs(Nam,emailID,Num,Msg) values('" + txtName.Text + "','" + txtEmail.Text + "'," + txtNum.Text + ",'" + txtArea.Text  + "')";

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