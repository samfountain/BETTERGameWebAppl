using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BETTERGameWebAppl
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Exercise_Click(object sender, EventArgs e)
        {
            if (System.Web.HttpContext.Current.User != null && System.Web.HttpContext.Current.User.Identity.IsAuthenticated)
            {
                BetterGameMembershipProvider provider = new BetterGameMembershipProvider();
                BetterGameMembershipUser user = (BetterGameMembershipUser)provider.GetUser(System.Web.HttpContext.Current.User.Identity.Name.ToString(), true);

            }
            }
        }
}