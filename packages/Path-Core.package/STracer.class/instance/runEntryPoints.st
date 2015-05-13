running
runEntryPoints
	| size lastTestCaseClass |
	lastTestCaseClass := nil.
	size := self entryPoints size.
	[self entryPoints 
		do: [:each | 
			lastTestCaseClass := self checkForInitializingTestResourcesFor: each 
										and: lastTestCaseClass.
			self runEntryPoint: each	] 
		displayingProgress: [:each | 
			'Processing ', each asString, ' out of ', size asString, ' Entry Points.']]
		ensure: [lastTestCaseClass 
					ifNotNil: [self resetTestResourcesOf: lastTestCaseClass.]].