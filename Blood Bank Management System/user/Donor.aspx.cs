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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;
        SqlDataAdapter adpt;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
            
            qry = "Select * from BloodGroup";
            adpt = new SqlDataAdapter(qry, cn);
            DataTable dt = new DataTable();
            adpt.Fill(dt);
            dropBlood.DataSource = dt;
            dropBlood.DataBind();
            dropBlood.DataTextField = "Grp";
            dropBlood.DataValueField = "ID";
            dropBlood.DataBind();



        }

        protected void btnSub_Click(object sender, EventArgs e)
        {
            string r;
            if (red1.Checked == true)
                r = "Male";
            else
                r = "Female";
            string a;
            if (rd3.Checked == true)
                a = "Right Now";
            else
                a = "On Demand";
            String c = "0";
            qry = "insert into User_Master(Fname,Lname,Email,Gender,Address,City,Pin,Age,ContactNo,BloodGroup,Weight,DAte,Status) values('" + txtFName.Text + "','" + txtLname.Text + "','" + txtEmail.Text + "','" + r + "','" + txtAddress.Text + "','" + dropCity.SelectedItem.Value + "','" + txtPin.Text + "'," + Convert.ToInt64(txtAge.Text) + "," + Convert.ToInt64(txtNum.Text) + ",'" + dropBlood.SelectedValue.ToString() + "'," + Convert.ToInt64(txtWeight.Text) + ",'" + a + "'," + Convert.ToInt64(c) + ")";

            SqlCommand cmd = new SqlCommand(qry, cn);
           cmd.ExecuteNonQuery();
            Response.Write("<script> alert('Registered Successfully.')  <script>");
            Response.Redirect("UserHome.aspx");

           
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            cn.Close();
        }
    }
}