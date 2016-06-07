using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//session library
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;
using FindYourCar.DB.Models;
using FindYourCar.DB;

namespace FindYourCar.Site
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(HttpContext.Current.Session["isLogin"].Equals(true))
            {
                Session["userLoginName"] = "";
                Session["userLoginPass"] = "";
                Session["isLogin"] = false;

                Response.Redirect("~/Site/login.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            AccountModel model = new AccountModel();
            Account acc = createAnAccount();
            if (model.checkPass(acc))
            {
                if(chkRemember.Checked == true)
                {
                    HttpContext.Current.Session["userLoginPass"] = txtPass.Text;
                }
                HttpContext.Current.Session["isLogin"] = true;
                HttpContext.Current.Session["userLoginName"] = txtUsername.Text;
                Response.Redirect("~/Site/profile.aspx");
            }
            else
            {
                lblError.Text = "Your username/password is incorrect.";
            }
        }

        protected Account createAnAccount()
        {
            Account a = new Account();
            a.UserName = txtUsername.Text;
            a.PassWord = txtPass.Text;
            return a;
        }
    }
}
