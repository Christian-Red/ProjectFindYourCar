using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FindYourCar.DB.Models
{
    public class MemberModel
    {
      public Member findByUsername (string username)
        {
            string sQuery = "select * from Member where UserAccount = " + username;
            CarManagementEntities db = new CarManagementEntities();
            var mem = db.Members.SqlQuery("select * from Member m, Location l where UserAccount = @userName and m.LocationID = l.ID", new SqlParameter("@userName", username)).ToList();

            return mem.First();
        }     
      public Member createMember (string fName, string lName, DateTime birth, int loc, string phone, string acc, string email, string img)
        {
            Member mem = new Member();
            mem.FirstName = fName;
            mem.LastName = lName;
            mem.Birthday = birth.Date;
            if (loc <= 0) mem.LocationID = 1;
            else mem.LocationID = loc;
            mem.Phone = phone;
            mem.UserAccount = acc;
            mem.Email = email;
            if (img == "") mem.ProfileImg = "~/Image/default.jpg";
            else mem.ProfileImg = "~/Image/" + img;
            return mem;
        }

      public void insertMember(Member mem)
        {
            CarManagementEntities db = new CarManagementEntities();
            db.Members.Add(mem);
            db.SaveChanges();
        } 
    }
}