<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<SamasatiYoga.Models.Course>>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Courses</title>
</asp:Content>
<asp:Content ID="CoursesContent" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Index</h2>

    <table>
        <tr>
            <th></th>
            <th>    
                Name
            </th>
            <th>
                Start Date
            </th>
            <th>
                End Date
            </th>
            <th>
                Location
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%= Html.ActionLink("Edit", "Edit", new { id=item.CourseId }) %> |
                <%= Html.ActionLink("Details", "Details", new { id=item.CourseId })%> |
                <%= Html.ActionLink("Delete", "Delete", new { id=item.CourseId })%>
            </td>
            <td>
                <%= Html.Encode(item.Name) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.StartDate)) %>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.EndDate)) %>
            </td>
            <td>
                <%= Html.Encode(item.Location) %>
            </td>
        </tr>
    
    <% } %>

    </table>

    <p>
        <%= Html.ActionLink("Create New", "Create") %>
    </p>

</asp:Content>


