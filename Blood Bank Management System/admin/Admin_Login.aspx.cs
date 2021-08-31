using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_Bank_Management_System.admin.main
{
    public partial class Admin_Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd=new SqlCommand();
        SqlDataReader sdr;
        string qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            qry = "select * from Admin_Master where Email='" + txtmail.Text + "' and Password='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            sdr = cmd.ExecuteReader();
            if(sdr.HasRows)
            {
                sdr.Read();
                Response.Cookies["Admin"]["mail"] = sdr[3].ToString();
                Session["id"] = sdr[0].ToString();
                Session["fname"] = sdr[1].ToString();
                Session["lname"] = sdr[2].ToString();
                Response.Redirect("~/admin/Admin_Home.aspx");
            }
            else
            {
                Response.Write("<script> alert(' Invalid Id or Password ') </script>");
            }
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            cn.Close();
        }
    }
}