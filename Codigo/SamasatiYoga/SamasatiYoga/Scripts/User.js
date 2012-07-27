
function onChangeState(isFromBilling) {

    var fromBilling = "";
    if (isFromBilling) {
        fromBilling = "Billing"
    }
    var selectedCost = $("#ddl" + fromBilling + "State").find(":selected").val();
        if (selectedCost == "other") {
            $("#divOther" + fromBilling + "State").css("display", "block");
            $("#txtOther" + fromBilling + "State").focus();
        }
        else {
            $("#divOther" + fromBilling + "State").css("display", "none");
        }


    }

    function onChangeBillingInfo(checked) {

        if (checked) {
            $("#BillingInformation_FirstName").val($("#FirstName").val());
            $("#BillingInformation_LastName").val($("#LastName").val());
            $("#BillingInformation_BillingAddress").val($("#Address").val());
            $("#BillingInformation_City").val($("#City").val());
            $("#ddlBillingState").val($("#ddlState").val());
            $("#BillingInformation_Country").val($("#Country").val());
            $("#BillingInformation_ZipPostalCode").val($("#ZipPostalCode").val());            
        }
        else {
            $("#BillingInformation_FirstName").val("");
            $("#BillingInformation_LastName").val("");
            $("#BillingInformation_BillingAddress").val("");
            $("#BillingInformation_City").val("");
            $("#ddlBillingState").val("0");
            $("#BillingInformation_Country").val("");
            $("#BillingInformation_ZipPostalCode").val("");
        }
    }
    function loadData(){
        var fieldData = $("#hdnFieldData").val().split(',');
        $("#ddlState").val(fieldData[0]);

        if (fieldData[1] == "M") {
            $("#rbtMale").attr("checked", "checked");
        }
        else if (fieldData[1] == "F") {
            $("#rbtFemale").attr("checked", "checked");
        }

        var rbtAge = "";
        switch (fieldData[2]) {
            case "20's":
                rbtAge = "#rbt20"
                break;
            case "30's":
                rbtAge = "#rbt30"
                break;
            case "40's":
                rbtAge = "#rbt40"
                break;
            case "50's":
                rbtAge = "#rbt50"
                break;
            case "60's":
                rbtAge = "#rbt60"
                break;
            default:
                rbtAge = "";
                break;
        }

        if (rbtAge != "") {
            $(rbtAge).attr("checked", "checked");
        }

        var prices = $("input[name='SelectedPrice']");     
        for (var i = 0; i < prices.length; i++) {
            if (prices[i].value == fieldData[3]) {
                $(":radio[value='" + fieldData[3] + "']").attr("checked", "checked");                
                break;
            }
        }
                
        $("#ddlBillingState").val(fieldData[4]);
           
    }