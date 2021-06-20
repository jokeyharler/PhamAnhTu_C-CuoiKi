using ModelEF.DAO;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TestUngDung.Areas.Admin.Controllers
{
    public class UserController : Controller
    {
        // GET: Admin/User
        //public ActionResult Index()
        //{
        //    var user = new UserDao();
        //    var model = user.ListAll();
        //    return View(model);
        //}
        //public ActionResult Index(int page = 1, int pagesize = 5)
        //{
        //    var user = new UserDao();
        //    var model = user.ListAll();
        //    return View(model.ToPagedList(page, pagesize));
        //}
        //[HttpPost]
        public ActionResult Index(string searchString, int page = 1, int pagesize = 4)
        {
            var user = new UserDao();
            var model = user.ListWhereAll(searchString, page, pagesize);
            ViewBag.SearchString = searchString;
            return View(model);
        }
        [HttpDelete]
        public ActionResult Delete(string ID)
        {
            var dao = new UserDao().Delete(ID);
            return RedirectToAction("Index");
        }
    }
}