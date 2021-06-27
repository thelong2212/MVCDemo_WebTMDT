using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebSiteBanHangMVC.Models;

namespace WebSiteBanHangMVC.DAO
{
    public class SanPhamDAO
    {
        ApplicationDbContext db = null;
        private static SanPhamDAO instance;
        static object key = new object();
        public static SanPhamDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    lock (key)//bất đồng bộ , chiếm dụng tài nguyên....
                    {
                        instance = new SanPhamDAO();
                    }
                }
                return instance;
            }
        }
        public SanPhamDAO()
        {
             db = new ApplicationDbContext();
        }
        public List<SanPham> DanhMucSanPham(int? danhMucID, ref int totalRecord, int pageIndex = 1, int pageSize = 4)
        {
            totalRecord = db.SanPhams.Where(x => x.LoaiSanPhamID == danhMucID).Count();
            var model = db.SanPhams.Where(x => x.LoaiSanPhamID == danhMucID).OrderByDescending(x => x.SanPhamID).Skip((pageIndex - 1) * pageSize).Take(pageSize);
            return model.ToList();
        }
        public List<SanPham> Search(int? danhMucID, string keyword, ref int totalRecord, int pageIndex = 1, int pageSize = 4)
        {
            totalRecord = db.SanPhams.Where(x => x.TenSanPham.Contains(keyword) && x.LoaiSanPhamID == danhMucID).Count();
            var model = db.SanPhams.Where(x => x.LoaiSanPhamID == danhMucID && x.TenSanPham.Contains(keyword)).OrderByDescending(x => x.SanPhamID).Skip((pageIndex - 1) * pageSize).Take(pageSize);
            return model.ToList();
        }

    }
}