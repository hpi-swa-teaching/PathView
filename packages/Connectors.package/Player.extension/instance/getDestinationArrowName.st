*connectors-slot getters/setters
getDestinationArrowName
	^(costume respondsTo: #destinationArrowName)
		ifFalse: [ 'unsupported' ]
		ifTrue: [ costume destinationArrowName  ].
		