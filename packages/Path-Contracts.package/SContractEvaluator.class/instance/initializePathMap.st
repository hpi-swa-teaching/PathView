accessing
initializePathMap

	| testRunner |
	testRunner := ToolBuilder build: SPathMapTestRunner new.
	self pathMap: testRunner model pathMap.
	self pathMap globalOptions
		switchShowAllMethods;
		switchShowMethodCategories;
		switchVisualizeIntermediateSteps.