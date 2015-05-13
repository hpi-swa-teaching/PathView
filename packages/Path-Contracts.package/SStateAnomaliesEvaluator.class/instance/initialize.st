initialize-release
initialize
	super initialize.
	self pathMap: SPathMapTestRunner open.
	self pathMap model pathMap globalOptions switchVisualizeIntermediateSteps.