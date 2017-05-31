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
    public partial class Admin_Add : System.Web.UI.Page
    {
        public CustomerLogic cl = new CustomerLogic();
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlCountry.DataSource = cl.LoadCountries().Solution.ToList();
            ddlCountry.DataBind();
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Customer c = new Customer();
                c.CustomerID = txtId.Text;
                c.CompanyName = txtCompanyName.Text;
                c.ContactName = txtContactName.Text;
                c.Country = ddlCountry.SelectedValue;

                var x = cl.InsertCustomer(txtId.Text, c);
                Response.Redirect("~/Admin_Edit.aspx?Id=" + txtId.Text);

                NorthwindHub.AddCustomer(c);
            }
        }
        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Admin.aspx");
        }


        protected void UniqueId(object source, ServerValidateEventArgs args)
        {
            var c = cl.FindCustomer(args.Value);

            if (c.Solution != null)
            {
                args.IsValid = false;
            }
        }
    }
}