event handling
mouseUp: anEvent

	(anEvent whichButton = anEvent class redButton)
		ifTrue: [^ self runMouseActionFor: #click].
	(anEvent whichButton = anEvent class yellowButton)
		ifTrue: [^ self runMouseActionFor: #rightClick].