*connectors-slot getters/setters
setOrthogonal: aBoolean
	(self costume respondsTo: #beOrthogonal:)
		ifTrue: [ self costume beOrthogonal: aBoolean ].
