evaluation
checkForFailuresWithPathMap: aMutation
	self current: nil.
	self runAllTests.
	(self pathMap model hasFailures or: [self pathMap model hasErrors])
		ifTrue: [self current add: {aMutation method. aMutation class}.
				self checkForViolationWithPathMap: aMutation].
"	self results add: self current."