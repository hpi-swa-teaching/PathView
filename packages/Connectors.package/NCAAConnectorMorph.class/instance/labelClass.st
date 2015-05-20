connectors-labels
labelClass
	^(Preferences valueOfFlag: #useSmartLabels)
		ifTrue: [ NCSmartLabelMorph ]
		ifFalse: [ NCLabelMorph ]
