sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animalinspections/test/integration/pages/InspectionsSrvList.gen",
	"animalinspections/test/integration/pages/InspectionsSrvObjectPage.gen"
], function (JourneyRunner, InspectionsSrvListGenerated, InspectionsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animalinspections') + '/test/flp.html#app-preview',
        pages: {
			onTheInspectionsSrvListGenerated: InspectionsSrvListGenerated,
			onTheInspectionsSrvObjectPageGenerated: InspectionsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

