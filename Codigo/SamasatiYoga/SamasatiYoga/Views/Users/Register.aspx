<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.User>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <link rel="stylesheet" href="../../Main/css/reset.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../../Main/css/layout.css" type="text/css" media="all" />
    <link rel="stylesheet" href="../../Main/css/style.css" type="text/css" media="all" />

    <script type="text/javascript" src="../../Main/js/jquery-1.4.2.min.js"></script>

    <script type="text/javascript" src="../../Main/js/cufon-yui.js"></script>

    <script type="text/javascript" src="../../Main/js/cufon-replace.js"></script>

    <script type="text/javascript" src="../../Main/js/Caviar_Dreams_500.font.js"></script>

    <script type="text/javascript" src="../../Main/js/flashobject.js"></script>
    
    <script type="text/javascript" src="../../Scripts/User.js"></script>

</head>
<body>
    <div class="tail-top">
        <div id="head">
            <div class="alignCenter">
                <a href="http://www.adobe.com/go/EN_US-H-GET-FLASH">
                    <img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png"
                        alt="" /></a></div>
        </div>

        <script type="text/javascript">
            var fo = new FlashObject("../../Main/flash/logo_v8.swf", "head", "100%", "141", "7", "");
            fo.addParam("quality", "high");
            fo.addParam("wmode", "transparent");
            fo.addParam("scale", "noscale");
            fo.write("head");
        </script>

        <div id="main">
            <header>
            
            <div class="inside">
                <div class="container">
                    <div id="head1">
                        <div class="alignCenter"><a href="http://www.adobe.com/go/EN_US-H-GET-FLASH"><img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png" alt="" /></a></div>
                    </div>
                    <script type="text/javascript">
                        var fo = new FlashObject("../../Main/flash/menu_v8.swf?button=6", "head1", "100%", "122", "7", "");
                        fo.addParam("quality", "high");
                        fo.addParam("wmode", "transparent");
                        fo.addParam("scale", "noscale");
                        fo.write("head1");
                    </script>
                </div>                              
                <div class=" container">
                    <div id="head2">
                        <div class="alignCenter"><a href="http://www.adobe.com/go/EN_US-H-GET-FLASH"><img src="http://www.adobe.com/images/shared/download_buttons/get_adobe_flash_player.png" alt="" /></a></div>
                    </div>
                    <script type="text/javascript">
                        var fo = new FlashObject("../../Main/flash/header_v8.swf", "head2", "100%", "351", "7", "");
                        fo.addParam("quality", "high");
                        fo.addParam("wmode", "transparent");
                        fo.addParam("scale", "noscale");
                        fo.write("head2");
                    </script>
                </div>               
            </div>
        </header>
            <div class="bg-cont">
                <div class="inside">
                    <div class="container">
                        <aside>
                        <%--<h2>Example</h2>--%>
                        <div class="p1 container1">
                        &nbsp;
                            <!--<li><a href="#">Praesent vestibu molestie</a></li>-->
                        </div>
                        <%--<h2>Example 1 </h2>--%>
                        &nbsp;
                         <!--<a href="#" class="link">details  </a>                  -->
                    </aside>                    
                        <section id="content">
                        <div class="indent">
                        
                        <h2 class="color1">Welcome to Living Yoga Retreat registration page!</h2>
                            <article>
                               <p> In order to confirm your reservation a deposit of $ 290.00 is due. It can be paid in 2
                                   easy steps; we accept Visa and Master card.                                
                                </p>
                                <p>
                                Deposits are not refundable but can be used for another Retreat within 1 year from
                                cancellation.
                                </p>
                                <p>
                                Choose the accommodation you prefer:
                                </p>
                                <p>
                                <ul>
                                <li>Bungalow:</li>
                                <li>Single occupancy: $ 1,575.00</li>
                                <li>Double occupancy: $ 1,335.00 per person</li>
                                <li>Triple occupancy: $ 1,015.00 per person</li>
                                </ul>
                                </p>
                                <p>
                                <ul>
                                <li>Classic room:</li>
                                <li>Single occupancy: $ 1,165.00</li>
                                <li>Double occupancy: $ 955.00 per person</li>
                                </ul>
                                </p>
                            </article>
                        
                        <% using (Html.BeginForm())
                           {%>
                            <%= Html.ValidationSummary(false, "Please fix the following errors to continue:", new Dictionary<string, object> { {"style", "font-size:smaller"}})%>
                            <fieldset>
                                <input type="hidden" id="hdnFieldData" value="<%=ViewData["fieldData"] as String %>" />
                                <input type="hidden" id="hdnCourseId" name="CourseId" value="<%=ViewData["courseId"] as String %>" />
                                <h2 class="color1">Personal Information</h2>
                              <article>
                                  <div class="container fleft containerColumn">
                                    <div>
                                        First Name:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.FirstName) %>
                                        <%= Html.ValidationMessage("FirstName","*")%>
                                    </div>
                                    <div>
                                        Last Name:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.LastName) %>
                                        <%= Html.ValidationMessage("LastName","*")%>
                                    </div>
                                    
                                    <div>
                                        Address:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.Address) %>
                                        <%= Html.ValidationMessage("Address","*")%>
                                    </div>
                                    <div>
                                        City:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.City) %>
                                        <%= Html.ValidationMessage("City","*")%>
                                    </div>
                                    <div>
                                        State/Province/Region:
                                    </div>
                                    <div class="ddl">
                                    <select name="State" id="ddlState" onchange="onChangeState(false);" onserverchange="algo(this);">
                                        <option value="0">(Please Select Your State)</option>
                                        <option value="AL">Alabama</option>
                                        <option value="AK">Alaska</option>
                                        <option value="AZ">Arizona</option>
                                        <option value="AR">Arkansas</option>
                                        <option value="CA">California</option>
                                        <option value="CO">Colorado</option>
                                        <option value="CT">Connecticut</option>
                                        <option value="DE">Delaware</option>
                                        <option value="DC">District Of Columbia</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="ID">Idaho</option>
                                        <option value="IL">Illinois</option>
                                        <option value="IN">Indiana</option>
                                        <option value="IA">Iowa</option>
                                        <option value="KS">Kansas</option>
                                        <option value="KY">Kentucky</option>
                                        <option value="LA">Louisiana</option>
                                        <option value="ME">Maine</option>
                                        <option value="MD">Maryland</option>
                                        <option value="MA">Massachusetts</option>
                                        <option value="MI">Michigan</option>
                                        <option value="MN">Minnesota</option>
                                        <option value="MS">Mississippi</option>
                                        <option value="MO">Missouri</option>
                                        <option value="MT">Montana</option>
                                        <option value="NE">Nebraska</option>
                                        <option value="NV">Nevada</option>
                                        <option value="NH">New Hampshire</option>
                                        <option value="NJ">New Jersey</option>
                                        <option value="NM">New Mexico</option>
                                        <option value="NY">New York</option>
                                        <option value="NC">North Carolina</option>
                                        <option value="ND">North Dakota</option>
                                        <option value="OH">Ohio</option>
                                        <option value="OK">Oklahoma</option>
                                        <option value="OR">Oregon</option>
                                        <option value="PA">Pennsylvania</option>
                                        <option value="RI">Rhode Island</option>
                                        <option value="SC">South Carolina</option>
                                        <option value="SD">South Dakota</option>
                                        <option value="TN">Tennessee</option>
                                        <option value="TX">Texas</option>
                                        <option value="UT">Utah</option>
                                        <option value="VT">Vermont</option>
                                        <option value="VA">Virginia</option>
                                        <option value="WA">Washington</option>
                                        <option value="WV">West Virginia</option>
                                        <option value="WI">Wisconsin</option>
                                        <option value="WY">Wyoming</option>
                                        <option value="Alberta">Alberta</option>
                                        <option value="British Columbia">British Columbia</option>
                                        <option value="Manitoba">Manitoba</option>
                                        <option value="New Brunswick">New Brunswick</option>
                                        <option value="Newfoundland">Newfoundland</option>
                                        <option value="Northwest Territories">Northwest Territories</option>
                                        <option value="Nova Scotia">Nova Scotia</option>
                                        <option value="Ontario">Ontario</option>
                                        <option value="Prince Edward Island">Prince Edward Island</option>
                                        <option value="Quebec">Quebec</option>
                                        <option value="Saskatchewan">Saskatchewan</option>
                                        <option value="Yukon">Yukon</option>
                                        <option value="other">Other</option>
                                    </select>
                                    <%= Html.ValidationMessage("State","*")%>
                                </div>
                                <div class="rowElem" id="divOtherState" style="display:none">
                                    <input type="text" id="txtOtherState" name="txtOtherState" />
                                    </div>
                                    <div>
                                        Country:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.Country) %>
                                        <%= Html.ValidationMessage("Country","*")%>
                                    </div>
                                    <div>
                                        Zip/Postal Code:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.ZipPostalCode) %>
                                        <%= Html.ValidationMessage("ZipPostalCode","*")%>
                                    </div>
                                    
                                    <br class="clear" />
                                  </div>
                                  <div class="container containerColumn">
                                    <div>
                                        Phone Number:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.PhoneNumber) %>
                                        <%= Html.ValidationMessage("PhoneNumber","*")%>
                                    </div>
                                    <div>
                                        Email:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.Email) %>
                                        <%= Html.ValidationMessage("Email","*")%>
                                    </div>
                                    <div>
                                        Confirm Email:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.ReEmail) %>
                                        <%= Html.ValidationMessage("ReEmail","*")%>
                                    </div>
                                    <div>
                                        Occupation:
                                    </div>
                                    <div class="rowElem">
                                        <%= Html.TextBoxFor(model => model.Occupation) %>
                                        <%= Html.ValidationMessage("Occupation","*")%>
                                    </div>
                                    <div>
                                        Gender:
                                    </div>
                                    <div class="divHeight">
                                        <input type="radio" id="rbtMale" name="Gender" value="M" class="radioBtn" />Male
                              	        <input type="radio" id="rbtFemale" name="Gender" value="F" class="radioBtn" />Female
                                        <%= Html.ValidationMessage("Gender","*")%>
                                    </div>
                                    <div>
                                        Age:
                                    </div>
                                    <div class="divHeight">
                                        <input type="radio" name="Age" id="rbt20" value="20's" class="radioBtn" />20's
                                        <input type="radio" name="Age" id="rbt30" value="30's" class="radioBtn" />30's
                                        <input type="radio" name="Age" id="rbt40" value="40's" class="radioBtn" />40's
                                        <input type="radio" name="Age" id="rbt50" value="50's" class="radioBtn" />50's
                                        <input type="radio" name="Age" id="rbt60" value="60's" class="radioBtn" />60's
                                        <%= Html.ValidationMessage("Age","*")%>
                                    </div>
                                    <br class="clear" />
                                  </div>
                              </article>
                              <br class="clear" />
                              <h2 class="color1">Payment Information</h2>
                              <article>
                              	  <div class="container fleft divHeight">
                              	    <input type="radio" name="SelectedPrice" value="4405" class="radioBtn" />Deposit: $ 290.00
                              	    <%--<input type="radio" name="SelectedPrice" value="4615" class="radioBtn" />Double: $ 4,615.00
                              	    <input type="radio" name="SelectedPrice" value="4405" class="radioBtn" />Triple: $ 4,405.00--%>                              	                                  	                                      
                                    <br class="clear" />
                                  </div>                                      
                              </article>
                              <br class="clear" />
                              <h2 class="color1">Billing Information</h2>
                              <article>
                                <div class="divHeight">
                                    <input type="checkbox" onchange="onChangeBillingInfo(this.checked);" class="chk" /> 
                                    My Billing information is the same as above 
                                </div>
                              	<div class="container fleft containerColumn">
                              	<div>
                                    First Name:
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.BillingInformation.FirstName)%>
                                    <%= Html.ValidationMessage("BillingInformation.FirstName","*")%>
                                </div>
                                <div>
                                    Last Name:
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.BillingInformation.LastName)%>
                                    <%= Html.ValidationMessage("BillingInformation.LastName","*")%>
                                </div>
                                <div>
                                    Billing Address
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.BillingInformation.BillingAddress) %>
                                    <%= Html.ValidationMessage("BillingInformation.BillingAddress","*")%>
                                </div>
                                <div>
                                    City:
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.BillingInformation.City) %>
                                    <%= Html.ValidationMessage("BillingInformation.City","*")%>
                                </div>
                                <div>
                                    State/Province/Region:
                                </div>
                                <div class="ddl">
                                    <select name="BillingInformation.State" id="ddlBillingState" onchange="onChangeState(true);">
                                        <option value="0">(Please Select Your State)</option>
                                        <option value="AL">Alabama</option>
                                        <option value="AK">Alaska</option>
                                        <option value="AZ">Arizona</option>
                                        <option value="AR">Arkansas</option>
                                        <option value="CA">California</option>
                                        <option value="CO">Colorado</option>
                                        <option value="CT">Connecticut</option>
                                        <option value="DE">Delaware</option>
                                        <option value="DC">District Of Columbia</option>
                                        <option value="FL">Florida</option>
                                        <option value="GA">Georgia</option>
                                        <option value="HI">Hawaii</option>
                                        <option value="ID">Idaho</option>
                                        <option value="IL">Illinois</option>
                                        <option value="IN">Indiana</option>
                                        <option value="IA">Iowa</option>
                                        <option value="KS">Kansas</option>
                                        <option value="KY">Kentucky</option>
                                        <option value="LA">Louisiana</option>
                                        <option value="ME">Maine</option>
                                        <option value="MD">Maryland</option>
                                        <option value="MA">Massachusetts</option>
                                        <option value="MI">Michigan</option>
                                        <option value="MN">Minnesota</option>
                                        <option value="MS">Mississippi</option>
                                        <option value="MO">Missouri</option>
                                        <option value="MT">Montana</option>
                                        <option value="NE">Nebraska</option>
                                        <option value="NV">Nevada</option>
                                        <option value="NH">New Hampshire</option>
                                        <option value="NJ">New Jersey</option>
                                        <option value="NM">New Mexico</option>
                                        <option value="NY">New York</option>
                                        <option value="NC">North Carolina</option>
                                        <option value="ND">North Dakota</option>
                                        <option value="OH">Ohio</option>
                                        <option value="OK">Oklahoma</option>
                                        <option value="OR">Oregon</option>
                                        <option value="PA">Pennsylvania</option>
                                        <option value="RI">Rhode Island</option>
                                        <option value="SC">South Carolina</option>
                                        <option value="SD">South Dakota</option>
                                        <option value="TN">Tennessee</option>
                                        <option value="TX">Texas</option>
                                        <option value="UT">Utah</option>
                                        <option value="VT">Vermont</option>
                                        <option value="VA">Virginia</option>
                                        <option value="WA">Washington</option>
                                        <option value="WV">West Virginia</option>
                                        <option value="WI">Wisconsin</option>
                                        <option value="WY">Wyoming</option>
                                        <option value="Alberta">Alberta</option>
                                        <option value="British Columbia">British Columbia</option>
                                        <option value="Manitoba">Manitoba</option>
                                        <option value="New Brunswick">New Brunswick</option>
                                        <option value="Newfoundland">Newfoundland</option>
                                        <option value="Northwest Territories">Northwest Territories</option>
                                        <option value="Nova Scotia">Nova Scotia</option>
                                        <option value="Ontario">Ontario</option>
                                        <option value="Prince Edward Island">Prince Edward Island</option>
                                        <option value="Quebec">Quebec</option>
                                        <option value="Saskatchewan">Saskatchewan</option>
                                        <option value="Yukon">Yukon</option>
                                        <option value="other">Other</option>
                                    </select>
                                    <%= Html.ValidationMessage("State","*")%>
                                </div>
                                <div class="rowElem" id="divOtherBillingState" style="display:none">
                                    <input type="text" id="txtOtherBillingState" name="txtOtherBillingState" />
                                    </div>
                                <div>
                                    Country:
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.BillingInformation.Country) %>
                                    <%= Html.ValidationMessage("BillingInformation.Country","*")%>                                    
                                </div>
                                <div>
                                    Zip/Postal Code:
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.BillingInformation.ZipPostalCode) %>
                                    <%= Html.ValidationMessage("BillingInformation.ZipPostalCode","*")%>
                                </div>
                 
                                <br class="clear" />
                              </div>                       
                              <div class="container containerColumn">
                              	 <div>
                                    Card Number:
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.CardNumber) %>
                                    <%= Html.ValidationMessage("CardNumber","*")%>                                    
                                </div>
                                <div>
                                    Expiration Date:
                                </div>
                                <div class="ddl">
                                    <select id="ddlMonth" name="ExpirationMonth">
                                        <option value="01">January</option>
                                        <option value="02">February</option>
                                        <option value="03">March</option>
                                        <option value="04">April</option>
                                        <option value="05">May</option>
                                        <option value="06">June</option>
                                        <option value="07">July</option>
                                        <option value="08">August</option>
                                        <option value="09">September</option>
                                        <option value="10">October</option>
                                        <option value="11">November</option>
                                        <option value="12">December</option>
                                    </select>
                                    /
                                    <select id="ddlYear" name="ExpirationYear">
                                        <option value="12">2012</option>
                                        <option value="13">2013</option>                                        
                                        <option value="14">2014</option>
                                        <option value="15">2015</option>
                                        <option value="16">2016</option>
                                        <option value="17">2017</option>
                                        <option value="18">2018</option>
                                        <option value="19">2019</option>
                                        <option value="20">2020</option>
                                        <option value="21">2021</option>
                                        <option value="22">2022</option>
                                        <option value="23">2023</option>
                                        <option value="24">2024</option>
                                        <option value="25">2025</option>
                                    </select>
                                    <%= Html.ValidationMessage("ExpirationDate","*")%>                                    
                                </div>
                                <div>
                                    CW2:
                                </div>
                                <div class="rowElem">
                                    <%= Html.TextBoxFor(model => model.CW2) %>
                                    <%= Html.ValidationMessage("CW2", "*")%>
                                </div>                                
                                    <br class="clear" />
                                  </div>                                
                              </article>
                            </fieldset>
                            <div>
                                <input type="submit" value="Register" class="btnRegister" />
                            </div>
                            
                            <% } %>                                                                                                                                                              
                                                        
                            <p></p>
                        </div>                    
                    </section>
                </div>
            </div>
        </div>
        <footer>      
            <div class="bot-left">
                <div class="bot-right">
                    <div class="inside">
                        <div class="fright"><!--{%FOOTER_LINK}--></div>
                        <div class="fleft"><span>Hatha</span> &nbsp;&copy; 2010 &nbsp;| &nbsp;<a href="../../Main/index-7.html">Privacy policy</a></div>
                        <ul>
                            <li><a href="#"><img alt="" src="../../Main/images/icon1.gif" /></a></li>
                            <li><a href="#"><img alt="" src="../../Main/images/icon2.gif" /></a></li>
                            <li><a href="#"><img alt="" src="../../Main/images/icon3.gif" /></a></li>
                            <li><a href="#"><img alt="" src="../../Main/images/icon4.gif" /></a></li>
                        </ul>
                    </div>
                </div>
            </div>   
        </footer>
    </div>
    </div>
    <script type="text/javascript">        Cufon.now();loadData(); </script>    
</body>
</html>
