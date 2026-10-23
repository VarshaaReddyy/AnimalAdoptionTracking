sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animal/adoption/userapplications/test/integration/pages/AdoptionApplicationsSrvList.gen",
	"animal/adoption/userapplications/test/integration/pages/AdoptionApplicationsSrvObjectPage.gen"
], function (JourneyRunner, AdoptionApplicationsSrvListGenerated, AdoptionApplicationsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animal/adoption/userapplications') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionApplicationsSrvListGenerated: AdoptionApplicationsSrvListGenerated,
			onTheAdoptionApplicationsSrvObjectPageGenerated: AdoptionApplicationsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

