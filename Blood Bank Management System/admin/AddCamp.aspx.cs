using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Blood_Bank_Management_System.admin.admin
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        String qry;

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.Open();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            qry = "insert into AddCamp(Cname,City,Location,Email,CellNumber,OrganizerName,Dat,Tim) values('" + txtcampName.Text + "','" + DropCity.SelectedValue.ToString() + "','" + DropHospital.SelectedValue.ToString() + "','" + txtemail.Text + "','" + txtnumber.Text + "','" + txtOrgName.Text + "','" + txtDate.Text + "','" + txtTime.Text + "')";

            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
        }

        protected void Page_Unload(object sender, EventArgs e)
        {
            cn.Close();
        }
    }
}