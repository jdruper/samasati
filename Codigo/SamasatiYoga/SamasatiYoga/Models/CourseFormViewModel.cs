using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace SamasatiYoga.Models
{
    public class CourseFormViewModel
    {
        private CostRepository costRepository = new CostRepository();

        // Properties
        public Course Course { get; private set; }
        public SelectList Costs { get; private set; }

        // Constructor
        public CourseFormViewModel(Course course)
        {
            Course = course;
            Costs = new SelectList(costRepository.FindAllCosts(), "CostId", "Description");
        }
    }
}
