<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.Course>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title><%= Html.Encode(Model.Name) %></title>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>    
       
        <h2><%= Html.Encode(Model.Name) %></h2>
        
        <div class="display-label">Start Date:</div>
        <div class="display-field"><%= Html.Encode(Model.StartDate.ToString("dd/MM/yyyy"))%></div>
        
        <div class="display-label">End Date:</div>
        <div class="display-field"><%= Html.Encode(Model.EndDate.ToString("dd/MM/yyyy")) %></div>
        
        <div class="display-label">Location:</div>
        <div class="display-field"><%= Html.Encode(Model.Location) %></div>
        
        <div class="display-label">Details:</div>
        <div class="display-field"><%= Html.Encode(Model.Details) %></div>
        
        <div class="display-label">Costs:</div>
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
                   <label><%=string.Format("{0:#,0.##}", selectedPrice)%></label>
                   
            <%} }%>
          </div>
           
    <p>

        <%= Html.ActionLink("Edit", "Edit", new { id=Model.CourseId }) %> |
        <%= Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

