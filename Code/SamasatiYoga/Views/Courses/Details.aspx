<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.Course>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title><%= Html.Encode(Model.Name) %></title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>    
       
        <h2><%= Html.Encode(Model.Name) %></h2>
        
        <div class="display-label">Start Date:</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.StartDate)) %></div>
        
        <div class="display-label">End Date:</div>
        <div class="display-field"><%= Html.Encode(String.Format("{0:g}", Model.EndDate)) %></div>
        
        <div class="display-label">Location:</div>
        <div class="display-field"><%= Html.Encode(Model.Location) %></div>
        
        <div class="display-label">Details:</div>
        <div class="display-field"><%= Html.Encode(Model.Details) %></div>
        
        <div class="display-label">Costs:</div>
           
    <p>

        <%= Html.ActionLink("Edit", "Edit", new { id=Model.CourseId }) %> |
        <%= Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

