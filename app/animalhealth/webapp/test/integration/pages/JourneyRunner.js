sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animalhealth/test/integration/pages/HealthRecordsSrvList.gen",
	"animalhealth/test/integration/pages/HealthRecordsSrvObjectPage.gen"
], function (JourneyRunner, HealthRecordsSrvListGenerated, HealthRecordsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animalhealth') + '/test/flp.html#app-preview',
        pages: {
			onTheHealthRecordsSrvListGenerated: HealthRecordsSrvListGenerated,
			onTheHealthRecordsSrvObjectPageGenerated: HealthRecordsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

