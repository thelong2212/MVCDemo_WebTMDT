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
    public class UserController : Controller
    {
        // GET: User
        [HttpGet]
        public ActionResult RegisterUser()
        {
            return View();
        }
        [HttpGet]
        public ActionResult LoginUser() 
        {
            return View();
        }
        public ActionResult LogoutUser()
        {
            Session[CommonConstant.USER_SESSION] = null;
            return Redirect("/");
        }
        [HttpPost]
        public ActionResult LoginUser(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var dao = new UserDAO();
                var result = dao.Login(model.UserName, Encryptor.MD5Hash(model.Password));
                if (result == 1)
                {
                    var user = dao.GetByID(model.UserName);
                    var userSession = new UserLogin();
                    userSession.UserName = user.UserName;
                    userSession.UserID = user.UserID;
                    Session.Add(CommonConstant.USER_SESSION, userSession);
                    return Redirect("/");
                }
                else if (result == 0)
                    ModelState.AddModelError("", "Tài khoản không tồn tại!");
                else if (result == -1)
                    ModelState.AddModelError("", "Tài khoản đang bị khóa!");
                else if (result == -2)
                    ModelState.AddModelError("", "Mật khẩu không đúng.");
                else
                    ModelState.AddModelError("", "Đăng nhập không đúng.");
            }
            return View(model);
        }
        [HttpPost]
        public ActionResult RegisterUser(RegisterModel model)
        {
            if (ModelState.IsValid)
            {
                
                var dao = new UserDAO();
                if (dao.CheckUserName(model.UserName))
                {
                    ModelState.AddModelError("", "Tên đăng nhập đã tồn tại");
                }
                else if (dao.CheckEmail(model.Email))
                {
                    ModelState.AddModelError("", "Email đã tồn tại");
                }
                else
                {
                    var user = new User();
                    user.UserName = model.UserName;
                    user.Name = model.Name;
                    user.Password = model.Password;
                    user.PasswordSalt = Encryptor.MD5Hash(model.Password);
                    user.Phone = model.Phone;
                    user.Email = model.Email;
                    user.Address = model.Address;
                    user.DiaChiChiTiet = model.DiaChiChiTiet;
                    user.CreatedDate = DateTime.Now;
                    user.Status = true;
                    if (!string.IsNullOrEmpty(model.ProvinceID))
                    {
                        user.ThanhPhoID = int.Parse(model.ProvinceID);
                    }
                    if (!string.IsNullOrEmpty(model.DistrictID))
                    {
                        user.QuanHuyenID = int.Parse(model.DistrictID);
                    }
                    var result = dao.Insert(user);
                    if (result > 0)
                    {
                        ViewBag.Success = "Đăng ký thành công";
                        model = new RegisterModel();
                    }
                    else
                    {
                        ModelState.AddModelError("", "Đăng ký không thành công.");
                    }
                }
            }
            return View(model);
        }
    }
}