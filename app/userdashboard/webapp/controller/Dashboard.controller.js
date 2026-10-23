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
    window.location.href =
        "/animal.adoption.userapplications/index.html";
},

onMyAdoptionsPress: function () {
    window.location.href =
        "/animal.adoption.useradoptions/index.html";
},

onProfilePress: function () {
    window.location.href =
        "/animal.adoption.userprofile/index.html";
}

        }
    );
}); 