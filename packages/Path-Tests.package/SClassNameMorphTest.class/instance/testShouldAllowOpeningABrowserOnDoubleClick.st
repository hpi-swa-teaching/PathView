as yet unclassified
testShouldAllowOpeningABrowserOnDoubleClick
	<ignoreForTypeHarvesting>
	self mock: #browse of: Class toReturn: [:v | v] during: [
		self
			assert: [instance doubleClick: MorphicUnknownEvent new]
			sends: #browse
			to: Class].