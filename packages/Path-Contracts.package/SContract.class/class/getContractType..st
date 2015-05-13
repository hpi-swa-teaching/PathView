exceptions-helper
getContractType: aContext
	| wrapperSelector |
	wrapperSelector := aContext method selector.
	(wrapperSelector beginsWith: #preconditions)
		ifTrue: [^ #precondition].
	(wrapperSelector beginsWith: #invariants)
		ifTrue: [^ #invariant].
	(wrapperSelector beginsWith: #postconditions)
		ifTrue: [^ #postcondition].				