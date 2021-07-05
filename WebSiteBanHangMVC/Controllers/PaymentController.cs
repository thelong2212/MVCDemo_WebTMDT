﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanHangMVC.Common;
using WebSiteBanHangMVC.DAO;
using WebSiteBanHangMVC.Models;
using WebSiteBanHangMVC.Utils;

namespace WebSiteBanHangMVC.Controllers
{
    public class PaymentController : Controller
    {
        // GET: Payment
        // Man hinh thanh toan nay minh se lay toan bo thong tin cua don hang duoc luu (session)
        // hien thi danh sach san pham dang co trong don hang
        public ActionResult Index()
        {
            var sessionGioHang = Session[Common.CommonSession.CART_SESSION] as GioHang;
            if (sessionGioHang == null)
            {
                sessionGioHang = new GioHang();
            }
            var sessionUserLogin = Session[CommonSession.USER_SESSION] as UserLogin;
            if (sessionUserLogin == null)
            {
                sessionUserLogin = new UserLogin();
            }
            var item = UserDAO.Instance.GetByID(sessionUserLogin.UserName);
            ViewData["UserLogin"] = item;

            return View(sessionGioHang);
        }

        // [HttpPost] Them moi,Them hinh...
        // [HttpPatch] Cap nhat, Them moi ...
        // [HttpPut] Cap nhat thong tin cho doi tuong
        // [HttpDelete] Xoa mot ban ghi
        // [HttpGet] : lay du lieu, danh sach , hoac mot doi tuong nao do de su dung o phai view(binding to view)
        // SanPham
        [HttpPost]
        public ActionResult XacNhanThanhToan() // model : thong tin cua khachhang
        {
            using (var db = new ApplicationDbContext())
            {
                var kh = new KhachHang();
                var donHang = new DonHang();
                var spDonHang = new SanPhamDonHang();
                var sessionGioHang = Session[Common.CommonSession.CART_SESSION] as GioHang;
                // insert mot don hang roi: => DonHangId => thi dong thoi minh cung phai insert vao bang san pham don hang
                kh.HoTen = Request.Form["hoTen"];
                kh.SoDienThoai = Convert.ToInt32(Request.Form["soDienThoai"]);
                kh.Email = Request.Form["email"];
                kh.DiaChi = Request.Form["diaChi"];
                int khacHangID = KhachHangDAO.Instance.insertKhachHang(kh);
                // get danh sach nhan vien: (where lanhanvienkiemduyetdonhang,(12h00 -> 5h00) calamviec < nam trong khoang nay > DateTime.Now) NhanVienID
                if (khacHangID != 0)
                {
                    donHang.NhanVienID = 1;
                    donHang.KhachHangID = khacHangID;
                    donHang.NgayNhan = Convert.ToDateTime(Request.Form["ngayNhan"]);
                    donHang.DiaChiNhanHangChiTiet = Request.Form["diaChiNhanHang"];
                    donHang.GhiChu = Request.Form["ghiChu"].ToString();
                    donHang.GiaTriDonHang = sessionGioHang.TongTien;
                    var donHangId = DonHangDAO.Instance.insertDonHang(donHang);
                    if (donHangId != 0)
                    {
                        spDonHang.DonHangID = donHangId;
                        foreach (var item in sessionGioHang.Gio)
                        {
                            spDonHang.GhiChu = donHang.GhiChu;
                            spDonHang.SanPhamID = item.SanPham.SanPhamID;
                            spDonHang.SoLuong = item.SoLuong;
                            SanPhamDonHangDAO.Instance.insertSanPhamDonHang(spDonHang);
                        }
                    }
                    ViewBag.DonHangID = donHangId;
                    string content = System.IO.File.ReadAllText(System.Web.HttpContext.Current.Server.MapPath("~/assets/client/template/neworder.html"));
                    content = content.Replace("{{cstomerName}}", kh.HoTen);
                    content = content.Replace("{{SDT}}", kh.SoDienThoai.ToString());
                    content = content.Replace("{{Email}}", kh.Email);
                    content = content.Replace("{{DiaChi}}", kh.DiaChi);
                    content = content.Replace("{{TongTien}}", donHang.GiaTriDonHang.ToString());
                    var toEmailAddr = ConfigurationManager.AppSettings["ToEmailAddress"].ToString();
              
                   new MailHelper().SendMail(kh.Email, $"Bạn đã đặt thành công đơn hàng mã số {donHangId} ", content);
                    new MailHelper().SendMail(toEmailAddr, $"Đơn hàng mới {donHangId} từ khách hàng Id = {kh.KhachHangID}: {kh.HoTen}", content);
                }

                // Send 
                return View();
            }
        }
    }
}