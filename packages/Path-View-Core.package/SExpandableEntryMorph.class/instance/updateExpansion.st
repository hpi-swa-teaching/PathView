layout and labels
updateExpansion
	"toggle expandible morphs and extend SClassDiagram if needed"	

	expanded
		ifFalse: [ self collapseMorphs ]
		ifTrue: [ 
			self expandMorphs.
			self extendDiagram ]

