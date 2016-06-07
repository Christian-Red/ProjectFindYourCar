using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;

namespace FindYourCar.Helper
{
    public class hashPass256bytes
    {
        public static string getMD5Hash(string password)
        {
            // byte array representation of that string
            byte[] encodedPassword = new UTF8Encoding().GetBytes("salt and more salt!!!" + password);

            // need MD5 to calculate the hash
            byte[] hash = ((HashAlgorithm)CryptoConfig.CreateFromName("MD5")).ComputeHash(encodedPassword);

            // string representation (similar to UNIX format)
            string encoded = BitConverter.ToString(hash)
               // without dashes
               .Replace("-", string.Empty)
               // make lowercase
               .ToLower();
            return encoded;
        }
        public static bool verifyHash(string password, string hashedPassword)
        {

            if (getMD5Hash(password) == hashedPassword)
                return true;
            else
                return false;
        }
    }
}