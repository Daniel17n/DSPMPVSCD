using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(GRV.Startup))]
namespace GRV
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
