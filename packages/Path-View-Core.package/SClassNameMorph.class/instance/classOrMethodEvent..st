system events
classOrMethodEvent: anEvent
	
	anEvent itemKind = #method
		ifFalse: [ self updateAll. ]
		ifTrue: [ klass methodDict size = 1 ifTrue: [self owner expandMorphs ] ].