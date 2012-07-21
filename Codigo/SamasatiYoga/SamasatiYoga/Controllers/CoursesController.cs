using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using SamasatiYoga.Helpers;
using SamasatiYoga.Models;

namespace SamasatiYoga.Controllers
{
    public class CoursesController : Controller
    {
        CourseRepository courseRepository = new CourseRepository();
        String[] defaultCosts = new String[] { "Single", "Double", "Triple", "Dorm" };

        //
        // GET: /Courses/

        public ActionResult Index()
        {
            var courses = courseRepository.FindAllCourses().ToList();
            return View(courses);
        }


        //
        // GET: /Courses/Details/id

        public ActionResult Details(int id)
        {

            var course = courseRepository.GetCourse(id);

            if (course == null)
            {
                return View("NotFound");
            }
            else
            {
                return View(course);
            }
        }

        //
        // GET: /Courses/Edit/id

        public ActionResult Edit(int id)
        {
            var dinner = courseRepository.GetCourse(id);
            return View(dinner);
        }


        //
        // POST: /Courses/Edit/id

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection formValues)
        {

            var course = courseRepository.GetCourse(id);

            try
            {
                UpdateModel(course);
                courseRepository.Save();

                return RedirectToAction("Details", new { id = course.CourseId });
            }
            catch
            {
                ModelState.AddRuleViolations(course.GetRuleViolations());
                return View(course);
            }
        }

        //
        // GET: /Courses/Create

        public ActionResult Create()
        {
            var course = new Course()
            {
                StartDate = DateTime.Now.AddDays(1),
                EndDate = DateTime.Now.AddDays(7)
            };

            ViewData["defaultCosts"] =  new SelectList(defaultCosts);
            return View(course);
        }

        //
        //
        // POST: /Dinners/Create

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Course course, FormCollection collection)
        {            
            if (ModelState.IsValid)
            {
                try
                {
                    var coursePrices = Request["CoursePrices"];
                    var descriptions = Request["CourseDescriptions"].Split(',');
                    if (!String.IsNullOrEmpty(coursePrices))
                    {
                        var prices = coursePrices.Split(',');
                        for (int i = 0; i < prices.Count(); i++)
                        {
                            course.Costs.Add(new Cost { CourseId = course.CourseId, Description = descriptions[i], Price = Convert.ToDecimal(prices[i]) });
                        }
                    }

                    courseRepository.Add(course);
                    courseRepository.Save();                    

                    return RedirectToAction("Details", new { id = course.CourseId });
                }
                catch
                {
                    ViewData["defaultCosts"] = GenerateCostList(course.Costs.ToList());
                    ViewData["selectedCosts"] = course.Costs.ToList();  
                    ModelState.AddRuleViolations(course.GetRuleViolations());
                }
            }

            return View(course);
        }

        //
        // HTTP GET: /Courses/Delete/id

        public ActionResult Delete(int id)
        {
            var course = courseRepository.GetCourse(id);

            if (course == null)
            {
                return View("NotFound");
            }
            else
            {
                return View(course);
            }
        }

        //
        // HTTP POST: /Dinners/Delete/1

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Delete(int id, string confirmButton)
        {

            var course = courseRepository.GetCourse(id);

            if (course == null)
            {
                return View("NotFound");
            }

            courseRepository.Delete(course);
            courseRepository.Save();

            return View("Deleted");
        }

        private SelectList GenerateCostList(List<Cost> selectedCosts)
        {
            var descs = defaultCosts;
            foreach (var cost in selectedCosts)
            {
                if (defaultCosts.Contains(cost.Description))
                {
                    descs = descs.Where(val => val != cost.Description).ToArray();
                }
            }

            if (descs.Count() == 0)
            {
                var list = new List<SelectListItem>();
                list.Add(new SelectListItem { Text = "No remaining costs", Value = "default" });
                return new SelectList(list, "Value", "Text");

            }
            else
            {

                return new SelectList(descs);
            }

        }
    }
}
