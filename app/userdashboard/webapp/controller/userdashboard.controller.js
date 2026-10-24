
sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/m/MessageToast"
], function (Controller, MessageToast) {
    "use strict";

    return Controller.extend(
        "animal.adoption.userdashboard.controller.Dashboard",
        {

            onInit: function () {
                console.log("Dashboard controller loaded successfully");
            },

            onTestPress: function () {
                MessageToast.show(
                    "Dashboard JavaScript is working!"
                );
            }

        }
    );
});
