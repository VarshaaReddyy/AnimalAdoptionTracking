sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel",
    "sap/m/MessageToast"
], function (
    Controller,
    JSONModel,
    MessageToast
) {
    "use strict";

    return Controller.extend(
        "animal.adoption.userdashboard.controller.Dashboard",
        {

            onInit: async function () {

                try {

                    const oModel =
                        this.getOwnerComponent().getModel();

                    const oBinding =
                        oModel.bindList("/UserDashboardStats");

                    const aContexts =
                        await oBinding.requestContexts(0, 1);

                    if (aContexts.length > 0) {

                        const oData =
                            aContexts[0].getObject();

                        const oDashboardModel =
                            new JSONModel(oData);

                        this.getView().setModel(
                            oDashboardModel,
                            "dashboard"
                        );
                    }

                } catch (oError) {

                    console.error(
                        "Dashboard Error:",
                        oError
                    );

                }
            },

            onBrowseAnimalsPress: function () {
    window.location.href =
        "/animal.adoption.useranimals/index.html";
},

onMyApplicationsPress: function () {
    
    const sUserId =
        "21390C66-6925-49F2-BDD5-AF0838C335A5";

    const sFilter =
        "applicant_ID eq " + sUserId;

    window.location.href =
        "/animal.adoption.userapplications/index.html" +
        "?$filter=" +
        encodeURIComponent(sFilter);

        
},

onMyAdoptionsPress: function () {
    const sUserId =
        "21390C66-6925-49F2-BDD5-AF0838C335A5";

    window.location.href =
        "/animal.adoption.useradoptions/index.html" +
        "?$filter=application/applicant_ID%20eq%20%27" +
        sUserId +
        "%27";
},

onProfilePress: function () {
    
        const sUserId =
        "21390C66-6925-49F2-BDD5-AF0838C335A5";

    window.location.href =
        "/animal.adoption.userprofile/index.html#/UsersSrv(" +
        sUserId +
        ")";
}

        }
    );
}); 