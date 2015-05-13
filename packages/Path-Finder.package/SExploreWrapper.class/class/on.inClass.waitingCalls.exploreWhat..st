instance creation
on: aMethodSelector inClass: aClass waitingCalls: aNumber exploreWhat: aSymbol

	| wrapper |
	wrapper := self on: aMethodSelector inClass: aClass waitingCalls: aNumber.
	wrapper ifNotNil: [wrapper exploreWhat: aSymbol].
	^ wrapper