*connectors-commands
addLabel: aString
	(self costume respondsTo: #addLabel:near:)
		ifFalse: [^self ].
	^self costume addLabel: aString near: self costume midpoint
 