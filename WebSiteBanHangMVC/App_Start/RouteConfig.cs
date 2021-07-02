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
               name: "Search",
               url: "tim-kiem-san-pham",
               defaults: new { controller = "DanhMucSanPham", action = "Search" }
           );
            routes.MapRoute(
                name: "ChiTietSanPham",
                url: "chi-tiet-san-pham/{id}",
                defaults: new { controller = "ChiTietSanPham", action = "Index" }
             );
            routes.MapRoute(
                name: "DangKy",
                url: "dang-ky-thanh-vien",
                defaults: new { controller = "Users", action = "DangKy" }
             );
            routes.MapRoute(
               name: "DangNhap",
               url: "dang-nhap",
               defaults: new { controller = "Users", action = "DangNhap" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
