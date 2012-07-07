<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
    <title>Successfully Deleted</title>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Course Deleted</h2>
    <div>
        <p>
            Your course was successfully deleted.</p>
    </div>
    <div>
        <p>
            <a href="/courses">Click for Upcoming Courses</a></p>
    </div>
</asp:Content>
