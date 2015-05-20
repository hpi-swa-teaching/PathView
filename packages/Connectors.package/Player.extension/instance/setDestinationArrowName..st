*connectors-slot getters/setters
setDestinationArrowName: aString
	(costume respondsTo: #destinationArrowName:)
		ifTrue: [ costume destinationArrowName: aString ].
		