using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FindYourCar.Controls
{
    public partial class navControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["isLogin"].Equals(true))
            {
                this.HeadLoginStatus.Text = "Logout";
            }
            else this.HeadLoginStatus.Text = "Login";
        }
    }
}