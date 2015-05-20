*connectors-slot getters/setters
getSmoothCurve
	(self costume respondsTo: #isCurve)
		ifFalse: [^false ].
	^self costume isCurve
 