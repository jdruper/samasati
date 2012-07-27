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
                ViewData["selectedCosts"] = course.Costs.ToList();  
                return View(course);
            }
        }

        public ActionResult RYTCourses()
        {
            var courses = courseRepository.FindAllCourses().ToList();
            return View(courses);
        }

        //
        // GET: /Courses/Edit/id

        public ActionResult Edit(int id)
        {
            var course = courseRepository.GetCourse(id);

            ViewData["defaultCosts"] = GenerateCostList(course.Costs.ToList());
            ViewData["selectedCosts"] = course.Costs.ToList();  

            return View(course);
        }


        //
        // POST: /Courses/Edit/id

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Edit(int id, FormCollection formValues)
        {

            var course = courseRepository.GetCourse(id);            

            try
            {
                var coursePrices = Request["CoursePrices"];
                var courseDescriptions = Request["CourseDescriptions"];
                
                if (String.IsNullOrEmpty(coursePrices))
                {
                    course.Costs.Clear();
                }
                else
                {
                    var prices = coursePrices.Split(',');
                    var descriptions = courseDescriptions.Split(',');
                    var costList = new List<Cost>();

                    for (int i = 0; i < prices.Count(); i++)
                    {
                        costList.Add(new Cost { CourseId = course.CourseId, Description = descriptions[i], Price = Convert.ToDecimal(prices[i].Replace(".",",")) });
                    }

                    var tempCosts = course.Costs.ToList();

                    foreach (var cost in tempCosts)
                    {
                        var price = costList.Where(val => val.Description == cost.Description).FirstOrDefault();                        
                        
                        if(price == null)
                        {
                            course.Costs.Remove(cost);
                            continue;
                        }
                        cost.Price = price.Price;
                        costList = costList.Where(val => val.Description != cost.Description).ToList();
                    }

                    course.Costs.AddRange(costList);
                }

                if (course.IsValid)
                {
                    UpdateModel(course);
                    courseRepository.Save();
                }
                else
                {
                    throw new Exception();
                }

                return RedirectToAction("Details", new { id = course.CourseId });
            }
            catch
            {
                ModelState.AddRuleViolations(course.GetRuleViolations());
                ViewData["defaultCosts"] = GenerateCostList(course.Costs.ToList());
                ViewData["selectedCosts"] = course.Costs.ToList();  
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
        // POST: /Course/Create

        [AcceptVerbs(HttpVerbs.Post)]
        public ActionResult Create(Course course, FormCollection collection)
        {            
            if (ModelState.IsValid)
            {
                try
                {
                    var coursePrices = Request["CoursePrices"];
                    var courseDescriptions = Request["CourseDescriptions"];

                    if (!String.IsNullOrEmpty(coursePrices))
                    {
                        var descriptions = courseDescriptions.Split(',');
                        var prices = coursePrices.Split(',');

                        for (int i = 0; i < prices.Count(); i++)
                        {
                            course.Costs.Add(new Cost { CourseId = course.CourseId, Description = descriptions[i], Price = Convert.ToDecimal(prices[i].Replace(".",",")) });
                        }
                    }

                    if (course.IsValid)
                    {
                        courseRepository.Add(course);
                        courseRepository.Save();
                    }
                    else
                    {
                        throw new Exception();
                    }

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
        // HTTP POST: /Course/Delete/id

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
