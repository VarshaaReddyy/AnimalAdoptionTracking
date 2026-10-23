sap.ui.define([
    "sap/ui/core/mvc/Controller",
    "sap/ui/model/json/JSONModel",
    "sap/m/MessageToast"
], function (Controller, JSONModel, MessageToast) {

    "use strict";

    return Controller.extend(
        "animal.adoption.animaladoption.controller.Dashboard",
        {

            onInit: async function () {

                const oModel =
                    this.getOwnerComponent().getModel();

                // =====================================================
                // DASHBOARD KPI DATA
                // =====================================================

                try {

                    const oBinding =
                        oModel.bindList("/DashboardStats");

                    const aContexts =
                        await oBinding.requestContexts(0, 1);

                    if (aContexts.length > 0) {

                        const oData =
                            aContexts[0].getObject();

                        console.log(
                            "Dashboard Data:",
                            oData
                        );

                        this.getView().setModel(
                            new JSONModel(oData),
                            "dashboard"
                        );
                    }

                } catch (oError) {

                    console.error(
                        "Dashboard KPI Error:",
                        oError
                    );
                }


                // =====================================================
                // APPLICATION STATUS
                // =====================================================

                try {

                    const oBinding =
                        oModel.bindList(
                            "/ApplicationStatusSummary"
                        );

                    const aContexts =
                        await oBinding.requestContexts(0, 50);

                    const aData =
                        aContexts.map(
                            oContext => oContext.getObject()
                        );

                    console.log(
                        "Application Status:",
                        aData
                    );

                    this.getView().setModel(
                        new JSONModel(aData),
                        "chart"
                    );

                } catch (oError) {

                    console.error(
                        "Application Status Error:",
                        oError
                    );
                }


                // =====================================================
                // ANIMAL CATEGORY
                // =====================================================

                try {

                    const oBinding =
                        oModel.bindList(
                            "/AnimalCategorySummary"
                        );

                    const aContexts =
                        await oBinding.requestContexts(0, 50);

                    const aData =
                        aContexts.map(
                            oContext => oContext.getObject()
                        );

                    console.log(
                        "Animal Category:",
                        aData
                    );

                    this.getView().setModel(
                        new JSONModel(aData),
                        "category"
                    );

                } catch (oError) {

                    console.error(
                        "Animal Category Error:",
                        oError
                    );
                }


                // =====================================================
                // ADOPTION TREND
                // =====================================================

                try {

                    const oBinding =
                        oModel.bindList(
                            "/AdoptionTrend"
                        );

                    const aContexts =
                        await oBinding.requestContexts(0, 50);

                    const aData =
                        aContexts.map(
                            oContext => oContext.getObject()
                        );

                    console.log(
                        "Adoption Trend:",
                        aData
                    );

                    this.getView().setModel(
                        new JSONModel(aData),
                        "trend"
                    );

                } catch (oError) {

                    console.error(
                        "Adoption Trend Error:",
                        oError
                    );
                }


                // =====================================================
                // SHELTER OCCUPANCY
                // =====================================================

                try {

                    const oBinding =
                        oModel.bindList(
                            "/ShelterOccupancy"
                        );

                    const aContexts =
                        await oBinding.requestContexts(0, 50);

                    const aData =
                        aContexts.map(
                            oContext => oContext.getObject()
                        );

                    console.log(
                        "Shelter Occupancy:",
                        aData
                    );

                    this.getView().setModel(
                        new JSONModel(aData),
                        "shelter"
                    );

                } catch (oError) {

                    console.error(
                        "Shelter Occupancy Error:",
                        oError
                    );
                }


                console.log(
                    "All dashboard data loading completed."
                );
            },


            // =====================================================
            // NAVIGATION
            // =====================================================

            onUsersPress: function () {

                window.location.href =
                    "/animalusers/webapp/index.html";
            },

            onSheltersPress: function () {

                window.location.href =
                    "/animalshelters/webapp/index.html";
            },

            onAnimalsPress: function () {

                window.location.href =
                    "/animalanimals/webapp/index.html";
            },

            onApplicationsPress: function () {

                window.location.href =
                    "/animalapplications/webapp/index.html";
            },

            onAdoptionsPress: function () {

                window.location.href =
                    "/animaladoptions/webapp/index.html";
            },

            onHealthRecordsPress: function () {

                window.location.href =
                    "/animalhealth/webapp/index.html";
            },

            onInspectionsPress: function () {

                window.location.href =
                    "/animalinspections/webapp/index.html";
            }

        }
    );
});