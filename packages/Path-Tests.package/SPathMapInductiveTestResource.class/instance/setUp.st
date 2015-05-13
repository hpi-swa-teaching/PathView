running
setUp
	SPathMapInductiveTestResource allSubclasses 
		detect: [:each | each isInitialized]
		ifFound: [:each | STestResourceError signal.]
		ifNone: [].
	self projectResourceClass current.
	self pathMap: SPathMapTestRunner open.
	(self pathMap model getFlap: #inductive) switchExpandState.
	self pathMap model pathMap selectedAnalysis: #inductive.
	self pathMap model pathMap selectedOptions	setKindOfAnalysis: self harvesterClass.