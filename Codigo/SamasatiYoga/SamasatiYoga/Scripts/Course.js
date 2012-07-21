$(function() {

    $.datepicker.setDefaults({
        dateFormat: 'dd/mm/yy'
    });

    $("#StartDate").datepicker();
    $("#EndDate").datepicker();
    $("#btnCreate").button();
});


function onClickAddCost() {

    var ddlCosts = $('#ddlCosts');
    var selectedCost = ddlCosts.find(":selected").text();
    var html = '';

    if (selectedCost == "No remaining costs") {
        ddlCosts.attr('disabled', 'disabled');
        $("#imgAddCost").attr('onClick', '');
    }
    else {

        html += "<div id='div" + selectedCost + "'>";
        html += "<label>" + selectedCost + ":</label><input type='text' name='CoursePrices' id='txtCost" + selectedCost + "' onblur='onBlurCost(this)' />";
        html += "<img src='../../Content/Images/delete.png' alt='Delete Cost' class='imgButton' onClick='onClickRemoveCost(\"" + selectedCost + "\")' />";
        html += "<input type='hidden' name='CourseDescriptions' value='" + selectedCost + "' id='hdnCost" + selectedCost + "' /><br /></div>";

        ddlCosts.find(":selected").remove();

        $('#divCosts').append(html);

        if ($('#ddlCosts option').size() == 0) {
            ddlCosts.append('<option value="default">No remaining costs</option>');
            ddlCosts.attr('disabled', 'disabled');
            $("#imgAddCost").attr('onClick', '');
        }
    }

    $('#txtCost' + selectedCost).focus();
}

function onClickRemoveCost(cost) {

    var ddlCosts = $('#ddlCosts');

    if (ddlCosts.attr('disabled') == "disabled") {
        ddlCosts.attr('disabled', false);
        $("#imgAddCost").attr('onClick', 'onClickAddCost();');
    }

    $('#ddlCosts option[value="default"]').remove();
    $('#div' + cost).remove();
    ddlCosts.append('<option>' + cost + '</option>');

}

function onBlurCost(txt) {

    if (!isWhole(txt.value)) {
        txt.value = "0";
    }
}

function isWhole(s) {
    var isWhole_re = /^\s*\d+\s*$/;
    return String(s).search(isWhole_re) != -1;

}
