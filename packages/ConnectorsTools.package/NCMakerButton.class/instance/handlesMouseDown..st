menus
handlesMouseDown: evt
	^evt yellowButtonPressed
		ifTrue: [ (owner isKindOf: NCButtonBar) not
			and: [ (owner isKindOf: NCPartsBin) not ] ]
		ifFalse: [ super handlesMouseDown: evt ]