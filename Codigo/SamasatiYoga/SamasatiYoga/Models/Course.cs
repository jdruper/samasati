using System;
using System.Collections.Generic;
using System.Data;
using System.Configuration;
using System.Data.Linq;
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
    public partial class Course
    {
        public bool IsValid
        {
            get { return (GetRuleViolations().Count() == 0); }
        }

        public IEnumerable<RuleViolation> GetRuleViolations()
        {
            if (String.IsNullOrEmpty(Name))
                yield return new RuleViolation("Name required", "Name");

            if (String.IsNullOrEmpty(Location))
                yield return new RuleViolation("Location required", "Location");

            if (String.IsNullOrEmpty(Details))
                yield return new RuleViolation("Details are required", "Details");

            if (StartDate < DateTime.Today)
                yield return new RuleViolation("Start Date must be after today's date", "StartDate");

            if (EndDate < DateTime.Today || EndDate < StartDate)
                yield return new RuleViolation("End Date must be after today's date and start date", "EndDate");

            yield break;
        }

        partial void OnValidate(ChangeAction action)
        {
            if (!IsValid)
                throw new ApplicationException("Rule violations prevent saving");
        }
    }
    public class RuleViolation
    {
        public string ErrorMessage { get; private set; }
        public string PropertyName { get; private set; }

        public RuleViolation(string errorMessage, string propertyName)
        {
            ErrorMessage = errorMessage;
            PropertyName = propertyName;
        }
    }

}
