<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.CourseFormViewModel>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Create Course</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>

        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Course.Name) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Course.Name) %>
                <%= Html.ValidationMessageFor(model => model.Course.Name) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Course.StartDate) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Course.StartDate) %>
                <%= Html.ValidationMessageFor(model => model.Course.StartDate) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Course.EndDate) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Course.EndDate) %>
                <%= Html.ValidationMessageFor(model => model.Course.EndDate) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Course.Location) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Course.Location) %>
                <%= Html.ValidationMessageFor(model => model.Course.Location) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Course.Details) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Course.Details) %>
                <%= Html.ValidationMessageFor(model => model.Course.Details) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Costs) %>
            </div>
            <% foreach (var cost in Model.Costs)
               { %>
            <div class="editor-field">  
                <%= Html.Label(cost.Text)%>
                <%= Html.TextBoxFor(model => model.Course.CourseCosts)%>
                <%= Html.ValidationMessageFor(model => model.Costs)%>
            </div>
            <% } %>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

