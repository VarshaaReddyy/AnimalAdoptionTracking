sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"userinspections/test/integration/pages/InspectionsSrvList.gen",
	"userinspections/test/integration/pages/InspectionsSrvObjectPage.gen"
], function (JourneyRunner, InspectionsSrvListGenerated, InspectionsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('userinspections') + '/test/flp.html#app-preview',
        pages: {
			onTheInspectionsSrvListGenerated: InspectionsSrvListGenerated,
			onTheInspectionsSrvObjectPageGenerated: InspectionsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

