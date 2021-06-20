using ModelEF.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class ProductDao
    {
        private PhamAnhTuContext db;
        public ProductDao()
        {
            db = new PhamAnhTuContext();
        }

        public List<Product> ListAll()
        {
            return db.Products.OrderBy(x => x.Quantity).ThenByDescending(x => x.UnitCost).ToList();
        }

        public string Insert(Product entity)
        {
            var thing = Find(entity.ID);
            if (thing == null)
            {
                db.Products.Add(entity);
            }
            else
            {
                thing.ID = entity.ID;
                if (!String.IsNullOrEmpty(entity.Name))
                {
                    thing.Name = entity.Name;
                }
                if (!String.IsNullOrEmpty(entity.UnitCost.ToString()))
                {
                    thing.UnitCost = entity.UnitCost;
                }
                if (!String.IsNullOrEmpty(entity.Quantity.ToString()))
                {
                    thing.Quantity = entity.Quantity;
                }
                if (!String.IsNullOrEmpty(entity.CategoryID))
                {
                    thing.CategoryID = entity.CategoryID;
                }
            }
            db.SaveChanges();
            return entity.ID;
        }
        public bool Delete(string ID)
        {
            try
            {
                var name = db.Products.Find(ID);
                db.Products.Remove(name);
                db.SaveChanges();
                return true;
            }
            catch (Exception)
            {
                return false;
            }

        }
        public Product Find(string user)
        {
            return db.Products.Find(user);
        }

    }
}
