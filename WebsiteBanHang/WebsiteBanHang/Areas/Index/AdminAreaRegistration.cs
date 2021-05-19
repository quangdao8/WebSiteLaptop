﻿using System.Web.Mvc;

namespace WebsiteBanHang.Areas.Index
{
    public class AdminAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Admin";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Admin_default",
                "Admin/{controller}/{action}/{id}",
                new { action = "Index", id = UrlParameter.Optional },
                new string[] { "WebsiteBanHang.Areas.Admin.Controllers" }
            );
        }
    }
}