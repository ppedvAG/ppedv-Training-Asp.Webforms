using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DataLayer.Models;
using BusinessLogic;
using UI_Northwindadmin.Hubs;

namespace UI_Northwindadmin
{
    public partial class Admin_Edit : System.Web.UI.Page
    {
        private CustomerLogic cl = new CustomerLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            var c = cl.FindCustomer(Request.QueryString["id"]);

            if (!IsPostBack)
            {
                HeadingCompanyName.Text = txtCompanyName.Text = c.Solution.CompanyName;
                txtContactName.Text = c.Solution.ContactName;

                ddlCountry.DataSource = cl.LoadCountries().Solution.ToList();
                ddlCountry.DataBind();
                ddlCountry.SelectedValue = c.Solution.Country;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Customer c = new Customer
            {
                CustomerID = Request.QueryString["id"],
                CompanyName = txtCompanyName.Text,
                ContactName = txtContactName.Text,
                Country = ddlCountry.SelectedValue,
            };
            var solution = cl.UpdateCustomer(c);
            NorthwindHub.EditCustomer(c);
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }
    }
}