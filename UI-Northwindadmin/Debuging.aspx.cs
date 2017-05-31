using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic;
using System.Diagnostics;
using DataLayer.Models;

namespace UI_Northwindadmin
{
    public partial class Debuging : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var cl = new CustomerLogic();
            var couties = cl.LoadCountries();

            foreach (var coutry in couties.Solution)
            {
                Debug.WriteLine(coutry);
                Trace.Write(coutry);
            }

            try
            {
                cl.InsertCustomer("ALFKI", new Customer());
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
                Trace.Warn(ex.Message.ToString());
            }
        }
    }
}