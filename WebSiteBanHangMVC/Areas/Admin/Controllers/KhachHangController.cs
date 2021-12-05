using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanHangMVC.DAO;
using WebSiteBanHangMVC.Models;
using WebSiteBanHangMVC.Utils;

namespace WebSiteBanHangMVC.Areas.Admin.Controllers
{
    public class KhachHangController : BaseController
    {
        // GET: Admin/KhachHang
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new KhachHangDAO();
            var model = dao.ListAllpaging(searchString, page, pageSize);

            ViewBag.SearchString = searchString;
            return View(model);
        }

        // GET: Admin/KhachHang/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/KhachHang/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/KhachHang/Create
        [HttpPost]
        public ActionResult Create(KhachHang khachHang)
        {
            if (ModelState.IsValid)
            {
                var currentCulture = Session[CommonConstant.CurrentCulture];
                var id = new KhachHangDAO().insertKhachHang(khachHang);
                if (id != 0)
                {
                    return RedirectToAction("Index");
                }
               
            }
            return View(khachHang);
        }

        // GET: Admin/KhachHang/Edit/5
        public ActionResult Edit(int id)
        {
            var khacHang = new KhachHangDAO().ViewDetail(id);
            return View(khacHang);
        }

        // POST: Admin/KhachHang/Edit/5
        [HttpPost]
        public ActionResult Edit(KhachHang khachHang)
        {
            if (ModelState.IsValid)
            {
                var dao = new KhachHangDAO();

                var result = dao.Update(khachHang);
                if (result)
                {
                    SetAlert("Sửa thông tin khách hàng thành công", "success");
                    return RedirectToAction("Index", "KhachHang");
                }
                else
                {
                    ModelState.AddModelError("", "Cập nhật thông tin khách hàng không thành công");
                }
            }
            return View("Index");
        }

        // GET: Admin/KhachHang/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new KhachHangDAO().Delete(id);
            return RedirectToAction("Index");
        }

    }
}
