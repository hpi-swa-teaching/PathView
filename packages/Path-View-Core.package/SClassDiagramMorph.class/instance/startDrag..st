event handling
startDrag: anEvent
	
	self
		runMouseActionFor: #mouseLeave;
		runMouseActionFor:   
			(anEvent shiftPressed
				ifTrue: [ #startShiftDrag ]
				ifFalse: [ #startDrag ]).