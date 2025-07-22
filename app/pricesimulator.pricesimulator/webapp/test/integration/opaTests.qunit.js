sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pricesimulator/pricesimulator/test/integration/FirstJourney',
		'pricesimulator/pricesimulator/test/integration/pages/pricesimulatorEntityList',
		'pricesimulator/pricesimulator/test/integration/pages/pricesimulatorEntityObjectPage'
    ],
    function(JourneyRunner, opaJourney, pricesimulatorEntityList, pricesimulatorEntityObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pricesimulator/pricesimulator') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onThepricesimulatorEntityList: pricesimulatorEntityList,
					onThepricesimulatorEntityObjectPage: pricesimulatorEntityObjectPage
                }
            },
            opaJourney.run
        );
    }
);