sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"animal/adoption/userprofile/test/integration/pages/UsersSrvList.gen",
	"animal/adoption/userprofile/test/integration/pages/UsersSrvObjectPage.gen"
], function (JourneyRunner, UsersSrvListGenerated, UsersSrvObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('animal/adoption/userprofile') + '/test/flp.html#app-preview',
        pages: {
			onTheUsersSrvListGenerated: UsersSrvListGenerated,
			onTheUsersSrvObjectPageGenerated: UsersSrvObjectPageGenerated
        },
        async: true
    });

    return runner;
});

