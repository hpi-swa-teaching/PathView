*connectors-slot getters/setters
getSourceArrowName
	^(costume respondsTo: #sourceArrowName)
		ifFalse: [ 'unsupported' ]
		ifTrue: [ costume sourceArrowName  ].
		