layout and labels
showLabels: showLabels
	
	showLabels
		ifTrue: [
			self recursivelyUpdateExpansion ]
		ifFalse: [
			self entries select: #expanded thenDo: #collapseMorphs ].
	self entries do: [ :each | each showLabel: showLabels ].