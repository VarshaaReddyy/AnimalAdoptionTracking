sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animal/adoption/animalshelters/test/integration/pages/SheltersSrvList.gen",
	"animal/adoption/animalshelters/test/integration/pages/SheltersSrvObjectPage.gen"
], function (JourneyRunner, SheltersSrvListGenerated, SheltersSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animal/adoption/animalshelters') + '/test/flp.html#app-preview',
        pages: {
			onTheSheltersSrvListGenerated: SheltersSrvListGenerated,
			onTheSheltersSrvObjectPageGenerated: SheltersSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

