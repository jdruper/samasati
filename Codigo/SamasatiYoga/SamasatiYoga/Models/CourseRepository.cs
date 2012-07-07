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
    public class CourseRepository
    {
        private SamasatiYogaDataContext db = new SamasatiYogaDataContext();

        //
        // Query Methods

        public IQueryable<Course> FindAllCourses()
        {
            return db.Courses;
        }

        public IQueryable<Course> FindUpcomingCourses()
        {
            return from course in db.Courses
                   where course.StartDate > DateTime.Now
                   orderby course.StartDate
                   select course;
        }

        public Course GetCourse(int id)
        {
            return db.Courses.SingleOrDefault(c => c.CourseId == id);
        }

        //
        // Insert/Delete Methods

        public void Add(Course course)
        {
            db.Courses.InsertOnSubmit(course);
        }

        public void Delete(Course course)
        {
            db.UserCourses.DeleteAllOnSubmit(course.UserCourses);
            db.Courses.DeleteOnSubmit(course);
        }

        //
        // Persistence

        public void Save()
        {
            db.SubmitChanges();
        }
    }
}
