using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UI_Northwindadmin
{
    public partial class UpdatePanel : System.Web.UI.Page
    {
        Random rand = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void UpdateImg(object sender, EventArgs e)
        {
            NameValueCollection list = new NameValueCollection();

            list.Add("Forest", "~/Content/img/1.jpg");
            list.Add("River", "~/Content/img/2.jpg");
            list.Add("Autumn", "~/Content/img/3.jpg");
            list.Add("Waterfall", "~/Content/img/4.jpg");
            list.Add("Purple Lake", "~/Content/img/5.jpg");
            list.Add("Sunset", "~/Content/img/6.jpg");

            var index = rand.Next(0, 6);

            ltName.Text = list.Keys[index].ToString();
            imgPics.ImageUrl = list[index].ToString();
        }
    }
}