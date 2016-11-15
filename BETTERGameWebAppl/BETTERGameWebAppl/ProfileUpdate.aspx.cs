using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    BetterGameMembershipProvider provider = new BetterGameMembershipProvider();
                    BetterGameMembershipUser user = (BetterGameMembershipUser)provider.GetUser(System.Web.HttpContext.Current.User.Identity.Name.ToString(), true);

                    firstname.Text = user.firstName;
                    lastname.Text = user.lastName;
                    email.Text = user.Email;
                    parentemail.Text = user.parentEmail;
                }
            }
            
        }

        protected void OnClick_btnUpdate(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                BetterGameMembershipProvider provider = new BetterGameMembershipProvider();
                BetterGameMembershipUser user = (BetterGameMembershipUser)provider.GetUser(System.Web.HttpContext.Current.User.Identity.Name.ToString(), true);

                user.firstName = firstname.Text;
                user.lastName = lastname.Text;
                user.Email = email.Text;
                user.parentEmail = parentemail.Text;

                provider.bUpdateUser(user);
                Response.Redirect("~/Profile.aspx", true);

            }
        }
    }
}