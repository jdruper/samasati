﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<SamasatiYoga.Models.Course>" %>

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
                <%= Html.LabelFor(model => model.Name) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Name) %>
                <%= Html.ValidationMessageFor(model => model.Name) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.StartDate) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.StartDate) %>
                <%= Html.ValidationMessageFor(model => model.StartDate) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.EndDate) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.EndDate) %>
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
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>
