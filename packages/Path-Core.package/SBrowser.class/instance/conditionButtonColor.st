controls-prepost
conditionButtonColor
	"If conditions are shown currently, highlight the buttons"
	| method |
	method := currentCompiledMethod.
	((method isKindOf: SContractWrapper) and: [Preferences decorateBrowserButtons])
		ifFalse: [^ Color gray].
	(self preconditionsShown or: [self postconditionsShown]) ifTrue: 
		[^ Color yellow muchLighter lighter].
	^ Color transparent
