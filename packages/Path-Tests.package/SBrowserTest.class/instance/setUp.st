running
setUp
	super setUp.
	self browser: SBrowser open.
	self browserMorph: self browser dependents first.