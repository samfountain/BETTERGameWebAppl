using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class BETTERGameMaster : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            BetterGameMembershipProvider provider = new BetterGameMembershipProvider();

            if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                LoginText.Visible = true;
                LoginText.Text = "Welcome, " + System.Web.HttpContext.Current.User.Identity.Name.ToString();
                loginBtn.Visible = false;
                logOutBtn.Visible = true;

                characterBtn.Visible = true;
                profileBtn.Visible = true;
                battleBtn.Visible = true;
                exerciseBtn.Visible = true;
                hogBtn.Visible = true;
                
            }
            
        }

        protected void logOutBtn_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(HttpContext.Current.Request.Url.ToString(), false);

        }
    }
}