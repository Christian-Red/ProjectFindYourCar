using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FindYourCar.Helper;

namespace FindYourCar.DB.Models
{
    public class AccountModel
    {
        public bool checkPass(Account a)
        {
            try
            {
                CarManagementEntities db = new CarManagementEntities();

                //fetch obj from db
                string username = a.UserName;
                Account acc = db.Accounts.Find(username);
                if (acc == null)
                    return false;

                return (hashPass256bytes.verifyHash(a.PassWord, acc.PassWord));
            }
            catch (Exception)
            {
                return false;
            }
        }

        public void insertAccount(Account account)
        {
            CarManagementEntities db = new CarManagementEntities();
            db.Accounts.Add(account);
            db.SaveChanges();
        }

        public Account createAccount (string username, string pass, int type)
        {
            Account acc = new Account();
            acc.UserName = username;
            acc.PassWord = hashPass256bytes.getMD5Hash(pass);
            acc.CreatedDate = DateTime.Now.Date;
            acc.AppearedAbility = 0.1;
            acc.AccountType = type;
            acc.PostLimitation = 1;
            acc.NumberOfPost = 0;
            return acc;
        }
    }
}