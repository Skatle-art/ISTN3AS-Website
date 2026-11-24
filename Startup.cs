using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Hlangalezwe_Dental_Clinic.Startup))]
namespace Hlangalezwe_Dental_Clinic
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
