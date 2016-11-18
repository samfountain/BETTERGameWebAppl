using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            BetterGameMembershipProvider provider = new BetterGameMembershipProvider();
            MembershipCreateStatus result;

            provider.bCreateUser(username.Text, password.Text, email.Text, "", "", true, null, firstname.Text, lastname.Text, parentemail.Text, ddlCountry.SelectedValue, out result);

            if (result.Equals(MembershipCreateStatus.DuplicateUserName))
            {
                duplicateUsername.Visible = true;
            }
            else
            {
                FormsAuthentication.RedirectFromLoginPage(username.Text, false);
            }
        }
    }
}