layout and labels
updateExpansion
	
	expanded
		ifFalse: [ self collapseMorphs ]
		ifTrue: [ self expandMorphs ].