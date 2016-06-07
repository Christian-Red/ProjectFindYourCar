using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using FindYourCar.DB;
using FindYourCar.DB.Models;

namespace FindYourCar.Site
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadLocation();
        }

        #region "btn_control"
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                if (checkCondition())
                {
                    AccountModel model1 = new AccountModel();
                    Account newAcc = model1.createAccount(txtUsername.Text, txtPass.Text, rblType.SelectedIndex + 1);
                    model1.insertAccount(newAcc);
                    
                    MemberModel model2 = new MemberModel();
                    Member newMem = model2.createMember(txtFirstname.Text, txtLastname.Text, CalenBirth.SelectedDate, ddlLoc.SelectedIndex + 1, txtPhone.Text, txtUsername.Text, txtEmail.Text, ImageFile.FileName);
                    model2.insertMember(newMem);
                    lblError.Text = "You registered successfully.";
                }


            }
            catch (Exception exc)
            {
                lblError.Text = exc.ToString();
            }
        }

        #endregion

        #region "minor_function"
        protected void loadLocation()
        {
            var db = new CarManagementEntities();
            List<Location> location = db.Locations.SqlQuery("select * from Location").ToList();

            ddlLoc.Items.Clear();
            foreach (var loc in location)
            {
                ddlLoc.Items.Add(loc.Province);
            }
        }

        protected bool checkCondition()
        {
            CarManagementEntities db = new CarManagementEntities();
            if (chkAgree.Checked == false)
            {
                lblError.Text = "You have to accept our policy.";
                return false;
            }
            //check password
            if (txtPass == null)
            {
                txtPass.BorderColor = System.Drawing.Color.Red;
                lblError.Text = "You have to type your password.";
                return false;
            }
            else if (txtRetype.Text == null)
            {
                txtRetype.BorderColor = System.Drawing.Color.Red;
                lblError.Text = "You have to confirm your password.";
                return false;
            }
            else if (txtPass.Text != txtRetype.Text)
            {
                lblError.Text = "Your password is not matched.";
                txtRetype.BorderColor = System.Drawing.Color.Red;
                return false;
            }
            //checkUsername
            if (txtUsername == null || db.Accounts.Find(txtUsername.Text) != null)
            {
                txtUsername.BorderColor = System.Drawing.Color.Red;
                lblError.Text = "You should try another one.";
                return false;
            }

            //checkphone
            if (txtPhone.Text == null)
            {
                lblError.Text = "You should give us phone number to receive confirming message.";
                txtPhone.BorderColor = System.Drawing.Color.Red;
                return false;
            }
            if (txtPhone.Text.Count() > 11 || txtPhone.Text.Count() < 10)
            {
                lblError.Text = "Your phone number seems wrong. Please try again.";
                txtPhone.BorderColor = System.Drawing.Color.Red;
                return false;
            }
            return true;
        }
    }
    #endregion
}
 