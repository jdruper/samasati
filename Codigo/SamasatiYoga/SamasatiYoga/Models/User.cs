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
using System.Collections.Generic;
using System.Data.Linq;

namespace SamasatiYoga.Models
{
    public partial class User
    {
        public bool IsValid
        {
            get { return (GetRuleViolations().Count() == 0); }
        }

        public string ReEmail
        {
            get; 
            set;
        }

        public decimal SelectedPrice
        {
            get;
            set;
        }

        public string CardNumber
        {
            get;
            set;
        }

        public string ExpirationDate
        {
            get;
            set;
        }

        public string CW2
        {
            get;
            set;
        }

        public IEnumerable<RuleViolation> GetRuleViolations()
        {
            if (String.IsNullOrEmpty(FirstName))
                yield return new RuleViolation("First Name required", "FirstName");

            if (String.IsNullOrEmpty(LastName))
                yield return new RuleViolation("Last Name required", "LastName");

            if (String.IsNullOrEmpty(Address))
                yield return new RuleViolation("Address is required", "Address");

            if (String.IsNullOrEmpty(City))
                yield return new RuleViolation("City is required", "City");

            if (State == "0" || String.IsNullOrEmpty(State))
                yield return new RuleViolation("State is required", "State");

            if (String.IsNullOrEmpty(Country))
                yield return new RuleViolation("Country is required", "Country");

            if (String.IsNullOrEmpty(ZipPostalCode))
                yield return new RuleViolation("Zip/Postal Code is required", "ZipPostalCode");

            if (String.IsNullOrEmpty(PhoneNumber))
                yield return new RuleViolation("Phone Number is required", "PhoneNumber");

            if (String.IsNullOrEmpty(Email))
                yield return new RuleViolation("Email Address is required", "Email");
            
            if (String.IsNullOrEmpty(Email))
                yield return new RuleViolation("Confirmation Email Address is required", "ReEmail");

            if (!String.IsNullOrEmpty(Email) && !String.IsNullOrEmpty(ReEmail))
            {
                if (Email.Trim() != ReEmail.Trim())
                    yield return new RuleViolation("Email Address does not match with confirmation", "ReEmail");
            }

            if (String.IsNullOrEmpty(Occupation))
                yield return new RuleViolation("Occupation is required", "Occupation");

            if (String.IsNullOrEmpty(Gender.ToString()))
                yield return new RuleViolation("Gender is required", "Gender");

            if (String.IsNullOrEmpty(Age))
                yield return new RuleViolation("Age is required", "Age");

            if (SelectedPrice == 0)
                yield return new RuleViolation("You must select a price", "SelectedPrice");

            if (String.IsNullOrEmpty(BillingInformation.FirstName))
                yield return new RuleViolation("Billing First Name required", "BillingInformation.FirstName");

            if (String.IsNullOrEmpty(BillingInformation.LastName))
                yield return new RuleViolation("Last Name required", "LastName");

            if (String.IsNullOrEmpty(BillingInformation.BillingAddress))
                yield return new RuleViolation("Billing Address is required", "BillingInformation.BillingAddress");

            if (String.IsNullOrEmpty(BillingInformation.City))
                yield return new RuleViolation("Billing City is required", "BillingInformation.City");

            if (BillingInformation.State == "0")
                yield return new RuleViolation("Please select a Billing State", "BillingInformation.State");

            if (String.IsNullOrEmpty(BillingInformation.Country))
                yield return new RuleViolation("Billing Country is required", "BillingInformation.Country");

            if (String.IsNullOrEmpty(BillingInformation.ZipPostalCode))
                yield return new RuleViolation("Billing Zip/Postal Code is required", "BillingInformation.ZipPostalCode");

            if (String.IsNullOrEmpty(CardNumber))
                yield return new RuleViolation("Card Number is required", "CardNumber");

            if (String.IsNullOrEmpty(ExpirationDate))
                yield return new RuleViolation("ExpirationDate is required", "ExpirationDate");

            if (String.IsNullOrEmpty(CW2))
                yield return new RuleViolation("CW2 is required", "CW2");
            
            yield break;
        }

        partial void OnValidate(ChangeAction action)
        {
            if (!IsValid)
                throw new ApplicationException("Rule violations prevent saving");
        }

    }
}
