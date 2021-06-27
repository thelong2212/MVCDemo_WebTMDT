﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanHangMVC.DAO;
using WebSiteBanHangMVC.Models;

namespace WebSiteBanHangMVC.Controllers
{
    public class DanhMucSanPhamController : Controller
    {
        // GET: DanhMucSanPham
        public ActionResult Index(int? ID, int pageIndex=1, int pageSize= 4)
        {
            using(var db= new ApplicationDbContext())
            {
                if (ID.HasValue)
                {
                    var TenLoaiSanPham = db.PhanLoaiSanPhams.Where(x => x.PhanLoaiSanPhamID == ID).Select(x => x.TenPhanLoaiSanPham).FirstOrDefault();
                    int totalRecord = 0;
                    var dsSanPhamTheoLoai = new SanPhamDAO().DanhMucSanPham(ID, ref totalRecord, pageIndex, pageSize);

                    ViewBag.Total = totalRecord;
                    ViewBag.Page = pageIndex;
                    int maxPage = 5;
                    int totalPage = 0;

                    totalPage = (int)Math.Ceiling((double)(totalRecord / pageSize));
                    ViewBag.TotalPage = totalPage + 1;
                    ViewBag.MaxPage = maxPage;
                    ViewBag.First = 1;
                    ViewBag.Last = totalPage;
                    ViewBag.Next = pageIndex + 1;
                    ViewBag.Prev = pageIndex - 1;

                    ViewData["dsSanPhamTheoLoai"] = dsSanPhamTheoLoai;
                    ViewBag.TenLoaiSanPham = TenLoaiSanPham;
                    ViewBag.danhMucSanPhamID = ID;
                }
                else
                {
                    var dsSanPhamTheoLoai = db.SanPhams.OrderByDescending(x => x.SanPhamID).Take(12).ToList();
                    ViewData["dsSanPhamTheoLoai"] = dsSanPhamTheoLoai;
                    ViewBag.TenLoaiSanPham = "San Pham";
                    ViewBag.danhMucSanPhamID = ID;
                }
            }
            return View();
        }
        public ActionResult Search(int pageIndex, int pageSize)
        {
            using(var db= new ApplicationDbContext())
            {
                string keyword = Request.Form["Search"];
                int id = Convert.ToInt32(Request.Form["id"]);
                var TenLoaiSanPham = db.PhanLoaiSanPhams.Where(x => x.PhanLoaiSanPhamID == id).Select(x => x.TenPhanLoaiSanPham).FirstOrDefault();
                int totalRecord = 0;
                var dsSanPham = new SanPhamDAO().Search(id, keyword, ref totalRecord, pageIndex, pageSize);

                ViewBag.Total = totalRecord;
                ViewBag.Page = pageIndex;
                int maxPage = 5;
                int totalPage = 0;

                totalPage = (int)Math.Ceiling((double)(totalRecord / pageSize));
                ViewBag.TotalPage = totalPage + 1;
                ViewBag.MaxPage = maxPage;
                ViewBag.First = 1;
                ViewBag.Last = totalPage;
                ViewBag.Next = pageIndex + 1;
                ViewBag.Prev = pageIndex - 1;

                ViewData["dsSanPham"] = dsSanPham;
                ViewBag.TenLoaiSanPham = TenLoaiSanPham;
                ViewBag.danhMucSanPhamID = id;

            }
            return View("Index");
        }
        
    }
    
}