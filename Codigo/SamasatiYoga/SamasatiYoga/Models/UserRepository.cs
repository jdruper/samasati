using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace SamasatiYoga.Models
{
    public class UserRepository
    {
        private SamasatiYogaDataContext db = new SamasatiYogaDataContext();

        //
        // Query Methods

        public IQueryable<User> FindAllUsers()
        {
            return db.Users;
        }
       
        public User GetUser(int id)
        {
            return db.Users.SingleOrDefault(u => u.UserId == id);
        }

        //
        // Insert/Delete Methods

        public void Add(User user)
        {
            db.Users.InsertOnSubmit(user);
        }

        public void Delete(User user)
        {
            db.UserCourses.DeleteAllOnSubmit(user.UserCourses);
            db.Users.DeleteOnSubmit(user);
        }

        //
        // Persistence

        public void Save()
        {
            db.SubmitChanges();
        }
    }
}
