sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"userapplications/test/integration/pages/AdoptionApplicationsSrvList.gen",
	"userapplications/test/integration/pages/AdoptionApplicationsSrvObjectPage.gen"
], function (JourneyRunner, AdoptionApplicationsSrvListGenerated, AdoptionApplicationsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('userapplications') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionApplicationsSrvListGenerated: AdoptionApplicationsSrvListGenerated,
			onTheAdoptionApplicationsSrvObjectPageGenerated: AdoptionApplicationsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

