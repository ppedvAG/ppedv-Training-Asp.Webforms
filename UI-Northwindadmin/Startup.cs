using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(UI_Northwindadmin.Startup))]
namespace UI_Northwindadmin
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
            app.MapSignalR();
        }
    }
}
