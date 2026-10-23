sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animaladoptions/test/integration/pages/AdoptionsSrvList.gen",
	"animaladoptions/test/integration/pages/AdoptionsSrvObjectPage.gen"
], function (JourneyRunner, AdoptionsSrvListGenerated, AdoptionsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animaladoptions') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionsSrvListGenerated: AdoptionsSrvListGenerated,
			onTheAdoptionsSrvObjectPageGenerated: AdoptionsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

