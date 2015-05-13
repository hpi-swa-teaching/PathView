running
setUp
	| pathMap |
	SProjectObserverTestResource current.
	pathMap := SPathMapTestRunner open.
	(pathMap model getFlap: #testQuality) switchExpandState.
	pathMap model pathMap selectedAnalysis: #testQuality.
	pathMap model runAll.
	pathMap abandon.