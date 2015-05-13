layout and labels
labelEmphasis
	
	^ (klass hasAbstractMethods
		ifTrue: [TextEmphasis italic]
		ifFalse: [TextEmphasis bold])
			emphasisCode