instance creation
on: aSymbol inClass: aClass waitingCalls: aNumber

	| wrapper |
	wrapper := self on: aSymbol inClass: aClass.
	wrapper ifNotNil: [wrapper numberOfCallsBefore: aNumber].
	^ wrapper