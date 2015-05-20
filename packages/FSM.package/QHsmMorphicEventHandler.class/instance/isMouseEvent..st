state handler guards
isMouseEvent: evt 
	^evt isMorphicEvent and: [evt isMouse]