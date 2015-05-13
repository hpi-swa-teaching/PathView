dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent
	
	(aMorph isKindOf: SFloatingCodeSnippet)
		ifTrue: [ aMorph processReengineeringInto: self ]
		ifFalse: [
			aMorph isClassMorph
				ifTrue: [ self mergeOtherClassMorph: aMorph ]
				ifFalse: [ aMorph processReengineeringInto: self ] ].