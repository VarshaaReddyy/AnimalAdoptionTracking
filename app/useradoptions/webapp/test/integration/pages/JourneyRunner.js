sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animal/adoption/useradoptions/test/integration/pages/AdoptionsSrvList.gen",
	"animal/adoption/useradoptions/test/integration/pages/AdoptionsSrvObjectPage.gen"
], function (JourneyRunner, AdoptionsSrvListGenerated, AdoptionsSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animal/adoption/useradoptions') + '/test/flp.html#app-preview',
        pages: {
			onTheAdoptionsSrvListGenerated: AdoptionsSrvListGenerated,
			onTheAdoptionsSrvObjectPageGenerated: AdoptionsSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

