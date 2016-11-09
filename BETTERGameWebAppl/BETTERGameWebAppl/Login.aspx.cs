using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

        protected void Login_OnClick(object sender, EventArgs args)
        {
            BetterGameMembershiProvider provider = new BetterGameMembershiProvider();

            if (provider.ValidateUser(Login.UserName, Login.Password))
                FormsAuthentication.RedirectFromLoginPage(Login.UserName, Login.RememberMeSet);
            
        }
    }
}