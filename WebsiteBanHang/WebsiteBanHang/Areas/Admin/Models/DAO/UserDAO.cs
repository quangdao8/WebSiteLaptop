using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebsiteBanHang.Areas.Admin.Models.Entites;

namespace WebsiteBanHang.Areas.Admin.Models.DAO
{
    public class UserDAO
    {
        WebsiteModel model;
        public UserDAO()
        {
            model = new WebsiteModel();
        }

        public bool checkLogin(string username, string password)
        {
            bool check = false;
            int a = model.US.Where(y => y.username == username && y.password == password).ToList().Count();
            if (a >= 1)
                check = true;
            return check;
        }
    }
}