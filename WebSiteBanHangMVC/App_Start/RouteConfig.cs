using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace WebSiteBanHangMVC
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            routes.MapRoute(
               name: "AddItem",
               url: "them-sp-gio-hang/{id}",
               defaults: new { controller = "GioHang", action = "AddItem" }
            );
            routes.MapRoute(
               name: "AddItems",
               url: "them-nhieu-sp-gio-hang/{ids}",
               defaults: new { controller = "GioHang", action = "AddItems" }
           );
            routes.MapRoute(
               name: "Index",
               url: "danh-muc-san-pham/{ID}",
               defaults: new { controller = "DanhMucSanPham", action = "Index" }
           );


            routes.MapRoute(
                name: "ChiTietSanPham",
                url: "chi-tiet-san-pham/{id}",
                defaults: new { controller = "ChiTietSanPham", action = "Index" }
             );

            routes.MapRoute(
               name: "RegisterUser",
               url: "register",
               new { controller = "User", action = "RegisterUser" }
              );

            routes.MapRoute(
               name: "LoginUser",
               url: "login",
               new { controller = "User", action = "LoginUser" }
            );

            routes.MapRoute(
            name: "XacNhanThanhToan",
            url: "xac-nhan-thanh-toan",
            new { controller = "Payment", action = "XacNhanThanhToan" }
         );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
