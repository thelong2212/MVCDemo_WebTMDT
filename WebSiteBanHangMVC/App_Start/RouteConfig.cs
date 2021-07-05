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

            //Route thanh toan
            routes.MapRoute(
               name: "Payment",
               url: "payment",
               new { controller = "Payment", action = "Index" }
           );
            routes.MapRoute(
               name: "ComfirmPayment",
               url: "confirmPayment",
               new { controller = "Payment", action = "XacNhanThanhToan" }
           );

            //Route gio hang
            routes.MapRoute(
               name: "RemoveItem",
               url: "remove/{id}",
               new { controller = "GioHang", action = "RemoveProduct" }
           );
            routes.MapRoute(
               name: "RemoveAllItem",
               url: "removeAll/{id}",
               new { controller = "GioHang", action = "RemoveAllItem" }
           );
            routes.MapRoute(
               name: "YourCart",
               url: "yourCart",
               new { controller = "GioHang", action = "Index" }
           );
            routes.MapRoute(
               name: "AddItem",
               url: "add/{id}",
               new { controller = "GioHang", action = "AddItem" }
            );
           // routes.MapRoute(
           //    name: "AddItems",
           //    url: "adds/{ids}",
           //    defaults: new { controller = "GioHang", action = "AddItems" }
           //);

            //Route danh muc san pham
            routes.MapRoute(
               name: "ProductCategory",
               url: "productCategory/{id}",
               new { controller = "DanhMucSanPham", action = "Index" }
           );
            routes.MapRoute(
               name: "Search",
               url: "search",
               new { controller = "DanhMucSanPham", action = "Search" }
           );

            //Route chi tiet san pham
            routes.MapRoute(
                name: "ProductDetail",
                url: "productDetail/{id}",
                new { controller = "ChiTietSanPham", action = "Index" }
             );

            //Route login, signup, logout
            //routes.MapRoute(
            //   name: "LoginAdmin",
            //   url: "loginVad",
            //   defaults: new { controller = "/Areas/Admin/Controllers/Login", action = "Index" }
            //);
            routes.MapRoute(
                name: "SignUp",
                url: "signup",
                new { controller = "User", action = "DangKy" }
             );
            routes.MapRoute(
               name: "Login",
               url: "login",
               new { controller = "User", action = "DangNhap" }
            );
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
