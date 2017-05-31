using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using DataLayer.Models;

namespace UI_Northwindadmin.Hubs
{
    public class NorthwindHub : Hub
    {
        public static void AddCustomer(Customer newCustomer)
        {
            var hubcontext = GlobalHost.ConnectionManager.GetHubContext<NorthwindHub>();
            hubcontext.Clients.All.added();
        }
        public static void EditCustomer(Customer newCustomer)
        {
            var hubcontext = GlobalHost.ConnectionManager.GetHubContext<NorthwindHub>();
            hubcontext.Clients.All.edited();
        }
    }
}