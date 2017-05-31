using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Models;
using BusinessLogic;

namespace UI_Northwindadmin
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var bl = new CustomerLogic();
            CustomersList.DataSource = bl.LoadCustomers().Solution.ToList();
            CustomersList.DataBind();
        }
    }
}