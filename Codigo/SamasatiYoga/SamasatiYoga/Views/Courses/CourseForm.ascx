<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<SamasatiYoga.Models.Course>" %>

<% using (Html.BeginForm())
       {%>
        <%= Html.ValidationSummary(false)%>
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Name)%>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Name)%>
                <%= Html.ValidationMessage("Name","*")%>
            </div>                        
            <div class="editor-label">
                <%= Html.LabelFor(model => model.StartDate)%>
            </div>
            <div class="editor-field">
                <%= Html.TextBox("StartDate", Model.StartDate.ToString("dd/MM/yyyy"))%>
                <%= Html.ValidationMessageFor(model => model.StartDate)%>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.EndDate)%>
            </div>
            <div class="editor-field">
                <%= Html.TextBox("EndDate", Model.EndDate.ToString("dd/MM/yyyy"))%>
                <%= Html.ValidationMessageFor(model => model.EndDate)%>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Location)%>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Location)%>
                <%= Html.ValidationMessage("Location","*")%>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Details)%>
            </div>
            <div class="editor-field">
                <%= Html.TextAreaFor(model => model.Details, 13, 45, "")%>
                <%= Html.ValidationMessage("Details", "*")%>
            </div>
            
            <div class="editor-label">
                <label>Course Costs:</label>
            </div>
            
            <div class="editor-field">
                <%=Html.DropDownList("ddlCosts", ViewData["defaultCosts"] as SelectList, new Dictionary<string, object> { { "style", "width:145px;" } })%>
                <img id="imgAddCost" src="../../Content/Images/add.png" alt="Add Cost" onclick="onClickAddCost()" class="imgButton" />
            </div>
            <div id="divCosts">
                <% var costs = ViewData["selectedCosts"] as IEnumerable<SamasatiYoga.Models.Cost>;
                   if (costs != null && costs.Count() > 0)
                   {    
                       foreach (var cost in costs)
                       {
                           var selectedCost = cost.Description;
                           var selectedPrice = cost.Price; 
                %>
                       
                   <div id='div<%=selectedCost%>'>
                   <label><%=selectedCost%>:</label>
                   <input type='text' name='CoursePrices' id='txtCost<%=selectedCost%>' value='<%=selectedPrice%>' onblur='onBlurCost(this)' />
                   <img src='../../Content/Images/delete.png' alt="Delete Cost" onclick='onClickRemoveCost("<%=selectedCost%>")' class="imgButton" />
                   <input type='hidden' name='CourseDescriptions' value='<%=selectedCost%>' id='hdnCost<%=selectedCost%>' /><br /></div>
                   
            <%} }%>
            </div>
            <p>
                <input type="submit" id="btnCreate" value="Save" />
            </p>
        </fieldset>

    <% } %>
