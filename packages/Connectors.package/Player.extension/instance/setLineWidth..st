*connectors-slot getters/setters
setLineWidth: aNumber
	(self costume respondsTo: #lineWidth:)
		ifTrue: [ self costume lineWidth: aNumber ].
