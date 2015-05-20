NCFSM compatibility
lastEventArguments
	^(event isKindOf: QEvent)
		ifTrue: [ event arguments ]
		ifFalse: [ { event } ]