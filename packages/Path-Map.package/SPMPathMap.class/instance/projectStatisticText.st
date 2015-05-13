spec commands
projectStatisticText
	| coverage |
	coverage := ''.
	self selectedAnalysis = #testQuality
		ifTrue: [	coverage := '--- ', ((((self tracer getAllCoveredMethods keys size / 
									self project numberOfMethods) * 100) asFloat) 
										printShowingDecimalPlaces: 2), '% covered'].
	^ self project metricsOverviewString, ' ', coverage