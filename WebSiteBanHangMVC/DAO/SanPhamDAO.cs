using PagedList;
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
        public long Create(SanPham entity)
        {
            entity.Status = true;
            db.SanPhams.Add(entity);
            db.SaveChanges();
            return entity.SanPhamID;
        }
        public CTSanPham ViewDetailProduct(int sanPhamID)
        {
            var ctSanPham = db.CTSanPhams.SingleOrDefault(x => x.SanPhamID == sanPhamID);
            return ctSanPham;
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
        public IEnumerable<SanPham> ListAllpaging(string searchString, int page, int pageSize)
        {
            IQueryable<SanPham> model = db.SanPhams;
          
            if (!string.IsNullOrEmpty(searchString))
            {
                model = model.Where(x => x.TenSanPham.Contains(searchString) || x.ThongTinSanPham.Contains(searchString) || x.MaSanPham.Contains(searchString) || x.GiaSanPham.ToString().Contains(searchString));
            }
            return model.OrderByDescending(x => x.NgayTao).ToPagedList(page, pageSize);
        }
        public bool Update(SanPham entity)
        {
            try
            {
                var sanPham = db.SanPhams.Find(entity.SanPhamID);
                sanPham.TenSanPham = entity.TenSanPham;
                sanPham.AnhSanPham = entity.AnhSanPham;
                sanPham.LoaiSanPhamID = entity.LoaiSanPhamID;
                sanPham.ThongTinSanPham = entity.ThongTinSanPham;
                sanPham.GiaSanPham = entity.GiaSanPham;
                sanPham.GhiChu = entity.GhiChu;
                sanPham.MaSanPham = entity.MaSanPham;
                sanPham.Hot = entity.Hot;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool Delete(int id)
        {
            try
            {
                var sanPham = db.SanPhams.Find(id);
                var lstCTSanPham = db.CTSanPhams.Where(x => x.SanPhamID == sanPham.SanPhamID).ToList();
                db.CTSanPhams.RemoveRange(lstCTSanPham);
                db.SanPhams.Remove(sanPham);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        public SanPham ViewDetail(int sanPhamID)
        {
            return db.SanPhams.Find(sanPhamID);
        }

    }
}