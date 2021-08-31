using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood_Bank.admin
{
    public partial class Admin_Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblname.Text = Session["fname"].ToString() + Session["lname"].ToString();
            lblname2.Text = Session["fname"].ToString() + Session["lname"].ToString();
        }
    }
}