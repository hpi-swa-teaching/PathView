event handling
mouseDown: evt
	^(evt shiftPressed or: [ evt yellowButtonPressed ])
		ifTrue: [ label releaseEditor.
			evt shiftPressed ifTrue: [ evt hand grabMorph: self ]
				ifFalse: [ super mouseDown: evt ]]
		ifFalse: [ label mouseDown: evt ].