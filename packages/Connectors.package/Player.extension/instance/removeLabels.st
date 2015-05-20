*connectors-commands
removeLabels
	(self costume respondsTo: #deleteAllLabels)
		ifFalse: [^self ].
	^self costume deleteAllLabels
 