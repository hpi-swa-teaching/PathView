instance creation
on: aSymbol inClass: aClass waitingCalls: aNumber coverageWrapper: aSteppingCoverageWrapper 
	| wrapper |
	wrapper := self
				on: aSymbol
				inClass: aClass
				waitingCalls: aNumber.
	wrapper coverageWrapper: aSteppingCoverageWrapper.
	^ wrapper