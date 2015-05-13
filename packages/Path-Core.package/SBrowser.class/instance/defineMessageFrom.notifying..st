message functions
defineMessageFrom: aString notifying: aController
	"If contracts exist for the compiled method, store the code at the right place"
	| methodNode |
	currentCompiledMethod class = SContractWrapper ifFalse: 
		[^ super defineMessageFrom: aString notifying: aController].
	
	methodNode := self methodNodeFrom: aString notifying: aController.
	self preconditionsShown 
		ifTrue: [currentCompiledMethod beforeMethod: methodNode method]
		ifFalse: 
			[self postconditionsShown 
				ifTrue:  [currentCompiledMethod afterMethod: methodNode method.]
				ifFalse: [currentCompiledMethod clientMethod: methodNode method]].
	contents := aString copy.
	^ methodNode selector.