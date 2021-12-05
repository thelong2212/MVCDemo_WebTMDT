    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebSiteBanHangMVC.DAO;
using WebSiteBanHangMVC.Models;

namespace WebSiteBanHangMVC.Areas.Admin.Controllers
{
    public class ProductController : BaseController
    {
        // GET: Admin/Product
        public ActionResult Index(string searchString, int page = 1, int pageSize = 10)
        {
            var dao = new SanPhamDAO();
            var mode = dao.ListAllpaging(searchString, page, pageSize);
            ViewBag.Keyword = searchString;
            return View(mode);
        }

        // GET: Admin/Product/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Admin/Product/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Product/Create
        [HttpPost]
        public ActionResult Create(SanPham sanPham)
        {
            var dao = new SanPhamDAO();
            long id = dao.Create(sanPham);
            if (id > 0)
            {
                SetAlert("Sửa thông tin khách hàng thành công", "success");
                return RedirectToAction("Index", "KhachHang");
            }
            else
            {
                ModelState.AddModelError("", "Cập nhật thông tin khách hàng không thành công");
            }
            return View(sanPham);
        }

        // GET: Admin/Product/Edit/5
        [HttpGet]
        public ActionResult Edit(int id)
        {
            var sanPham = new SanPhamDAO().ViewDetail(id);
            return View(sanPham);
        }

        // POST: Admin/Product/Edit/5
        [HttpPost]
        public ActionResult Edit(SanPham sanPham)
        {
            var dao = new SanPhamDAO();
            var model = dao.Update(sanPham);
            if (model)
            {
                SetAlert("Sửa thông tin khách hàng thành công", "success");
                return RedirectToAction("Index", "KhachHang");
            }
            else
            {
                ModelState.AddModelError("", "Cập nhật thông tin khách hàng không thành công");
            }
            return View("Index");
        }

        // GET: Admin/Product/Delete/5
        [HttpDelete]
        public ActionResult Delete(int id)
        {
            new SanPhamDAO().Delete(id);
            return RedirectToAction("Index");
        }

    }
}
