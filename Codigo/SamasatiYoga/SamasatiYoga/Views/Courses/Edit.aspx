<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.Course>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Edit Course</title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary("Please correct the errors and try again") %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Name) %>
                <%= Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                Start Date
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.StartDate, String.Format("{0:g}", Model.StartDate)) %>
                <%= Html.ValidationMessageFor(model => model.StartDate) %>
            </div>
            
            <div class="editor-label">
                End Date
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.EndDate, String.Format("{0:g}", Model.EndDate)) %>
                <%= Html.ValidationMessageFor(model => model.EndDate) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Location) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Location) %>
                <%= Html.ValidationMessageFor(model => model.Location) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Details) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Details) %>
                <%= Html.ValidationMessageFor(model => model.Details) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>
