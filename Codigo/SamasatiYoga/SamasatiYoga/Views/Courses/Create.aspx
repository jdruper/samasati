<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.Course>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Create Course</title>
    <link href="../../Content/Css/common.css" rel="stylesheet" type="text/css" />    
    <script type="text/javascript" src="../../Scripts/Course.js"></script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">

    <h2>Create</h2>

        <% Html.RenderPartial("CourseForm"); %>
    
    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

    </form>

</asp:Content>

