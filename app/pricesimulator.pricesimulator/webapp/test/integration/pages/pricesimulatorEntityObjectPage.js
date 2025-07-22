sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'pricesimulator.pricesimulator',
            componentId: 'pricesimulatorEntityObjectPage',
            contextPath: '/pricesimulatorEntity'
        },
        CustomPageDefinitions
    );
});