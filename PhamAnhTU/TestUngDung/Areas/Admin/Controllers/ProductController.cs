
using ModelEF.DAO;
using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI.WebControls;

namespace TestUngDung.Areas.Admin.Controllers
{
    public class ProductController : BaseController
    {
        // GET: Admin/Product
        private PhamAnhTuContext db = new PhamAnhTuContext();
        public ActionResult Index()
        {
            var thing = new ProductDao();
            var model = thing.ListAll();
            return View(model);
        }

        [HttpGet]
        public ActionResult Create()
        {
            SetViewBag();
            return View();
        }
        [HttpPost]
        public ActionResult Create(Product product)
        {
            if (ModelState.IsValid)
            {
                var dao = new ProductDao();


                var result = dao.Insert(product);
                if (result != null)
                {
                    SetAlert("Thêm mới sản phẩm thành công.", "success");
                    return RedirectToAction("Index", "Product");
                }
                else
                {
                    SetAlert("Thêm mới sản phẩm không thành công.", "error");
                }
            }

                return View();
        }
        public void SetViewBag(string selectedId = null)
        {
            var dao = new CategoryDao();
            ViewBag.CategoryId = new SelectList(dao.ListAll(), "ID", "Name", selectedId);

        }
        [HttpDelete]
        public ActionResult Delete(string ID)
        {
            new ProductDao().Delete(ID);
            return RedirectToAction("Index");
        }
        public ActionResult ProductDetail(string id)
        {
            Product product = db.Products.Where(x => x.ID == id).SingleOrDefault();
            return View(product);
        }
    }
}