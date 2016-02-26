using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Paturo.Startup))]
namespace Paturo
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
