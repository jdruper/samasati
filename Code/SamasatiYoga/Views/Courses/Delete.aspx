<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.Course>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Delete Course</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Delete Confirmation
    </h2>
    <div>
        <p>
            Please confirm you want to cancel the course: <i>
                <%=Html.Encode(Model.Name) %>? </i>
        </p>
    </div>
    <% using (Html.BeginForm())
       {  %>
    <input name="confirmButton" type="submit" value="Delete" />
    <% } %>
</asp:Content>
