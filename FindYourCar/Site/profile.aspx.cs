using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FindYourCar.DB.Models;
using FindYourCar.DB;

namespace FindYourCar.Site
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (HttpContext.Current.Session["isLogin"].Equals(false))
            {
                Response.Redirect("~/Site/login.aspx");
            }
            else getInfo();
        }

        protected void getInfo()
        {
            MemberModel model = new MemberModel();

            if (HttpContext.Current.Session["userLoginName"] != null)
            {
                string username = HttpContext.Current.Session["userLoginName"].ToString();
                Member currentMem = model.findByUsername(username);

                imgProfile.ImageUrl = currentMem.ProfileImg;
                lblFullname.Text = currentMem.FirstName +" "+ currentMem.LastName;
                lblBirth.Text = currentMem.Birthday.ToString();
                lblAddress.Text = currentMem.Location.Province;
                lblEmail.Text = currentMem.Email;
                lblPhone.Text = currentMem.Phone;
                lblAccount.Text = currentMem.UserAccount;
            }
        }

    }
}