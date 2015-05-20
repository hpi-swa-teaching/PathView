*connectors-slot getters/setters
setSourceArrowName: aString
	(costume respondsTo: #sourceArrowName:)
		ifTrue: [ costume sourceArrowName: aString ].
		