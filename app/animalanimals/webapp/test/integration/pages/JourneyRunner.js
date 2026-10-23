sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animalanimals/test/integration/pages/AnimalsSrvList.gen",
	"animalanimals/test/integration/pages/AnimalsSrvObjectPage.gen"
], function (JourneyRunner, AnimalsSrvListGenerated, AnimalsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animalanimals') + '/test/flp.html#app-preview',
        pages: {
			onTheAnimalsSrvListGenerated: AnimalsSrvListGenerated,
			onTheAnimalsSrvObjectPageGenerated: AnimalsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

