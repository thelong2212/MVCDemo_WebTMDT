using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanHangMVC.DAO;
using WebSiteBanHangMVC.Models;
using WebSiteBanHangMVC.Utils;
namespace WebSiteBanHangMVC.Controllers
{
    public class LayoutController : Controller
    {
        // GET: Layout
        public ActionResult Header()
        {
            using (var db = new ApplicationDbContext())
            {
                var phanLoaiSanPhams = db.PhanLoaiSanPhams.ToList();
                var danhMucSanPhams = db.DanhMucSanPhams.ToList();
                var dsPhanLoaiSanPhamNam = from plsp in phanLoaiSanPhams
                                           join dm in danhMucSanPhams on plsp.DanhMucSanPhamID equals dm.DanhMucSanPhamID
                                           where dm.LaDoNam == true
                                           select plsp;

                var dsPhanLoaiSanPhamNu = from plsp in phanLoaiSanPhams
                                           join dm in danhMucSanPhams on plsp.DanhMucSanPhamID equals dm.DanhMucSanPhamID
                                           where dm.LaDoNu == true
                                           select plsp;
                ViewData["dsPhanLoaiSanPhamNam"] = dsPhanLoaiSanPhamNam.ToList();
                ViewData["dsPhanLoaiSanPhamNu"] = dsPhanLoaiSanPhamNu.ToList();
                GioHang sessionGioHang = Session["GioHang"] as GioHang;
                //soLuong
                if (sessionGioHang == null)
                    ViewBag.SoLuong = 0;
                else
                    ViewBag.SoLuong = sessionGioHang.TongSoLuong;

                var sessionUserLogin = Session[Utils.CommonConstant.USER_SESSION] as UserLogin;
                if (sessionUserLogin == null)
                {
                    sessionUserLogin = new UserLogin();
                }
                var UserLogin = UserDAO.Instance.GetByID(sessionUserLogin.UserName);
                ViewData["UserLogin"] = UserLogin;
            }
            return View();
        }

        public ActionResult Footer()
        {
            GioHang sessionGioHang = Session["GioHang"] as GioHang;
            return View();
        }
    }
}