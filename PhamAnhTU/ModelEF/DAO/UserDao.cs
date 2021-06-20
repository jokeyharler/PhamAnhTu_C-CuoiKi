using ModelEF.Model;
using PagedList;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelEF.DAO
{
    public class UserDao
    {
        private PhamAnhTuContext db;
        public UserDao()
        {
            db = new PhamAnhTuContext();
        }
        public int login(string user, string pass)
        {
            var result = db.UserAccounts.SingleOrDefault(x => x.UserName.Contains(user) && x.Password.Contains(pass) && x.Status.Contains("Active"));
            if (result == null)
            {
                return 0;
            }
            else
            {
                return 1;
            }
        }
        public List<UserAccount> ListAll()
        {
            return db.UserAccounts.OrderBy(x => x.ID).ToList();
        }
        public IEnumerable<UserAccount> ListWhereAll(string keysearch, int page, int pagesize)
        {
           
            IQueryable<UserAccount> model = db.UserAccounts;
            if (!string.IsNullOrEmpty(keysearch))
            {

                model = model.Where(x => x.UserName.Contains(keysearch));
            }
            return model.OrderBy(x => x.UserName).ToPagedList(page, pagesize);
        }
        public bool Delete(string ID)
        {
            try
            {
                var user = db.UserAccounts.SingleOrDefault(x=>x.ID.Contains(ID) &&x.Status.Contains("Blocked"));
                if (user != null)
                {
                    db.UserAccounts.Remove(user);
                    db.SaveChanges();
                    return true;
                }

                return false;
            }
            catch (Exception)
            {
                return false;
            }
        }
    }
}
