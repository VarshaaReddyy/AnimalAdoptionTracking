sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animal/adoption/useranimals/test/integration/pages/AnimalsSrvList.gen",
	"animal/adoption/useranimals/test/integration/pages/AnimalsSrvObjectPage.gen"
], function (JourneyRunner, AnimalsSrvListGenerated, AnimalsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animal/adoption/useranimals') + '/test/flp.html#app-preview',
        pages: {
			onTheAnimalsSrvListGenerated: AnimalsSrvListGenerated,
			onTheAnimalsSrvObjectPageGenerated: AnimalsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

