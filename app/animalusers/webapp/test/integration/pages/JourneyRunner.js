sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animalusers/test/integration/pages/UsersSrvList.gen",
	"animalusers/test/integration/pages/UsersSrvObjectPage.gen"
], function (JourneyRunner, UsersSrvListGenerated, UsersSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animalusers') + '/test/flp.html#app-preview',
        pages: {
			onTheUsersSrvListGenerated: UsersSrvListGenerated,
			onTheUsersSrvObjectPageGenerated: UsersSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

