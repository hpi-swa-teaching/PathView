highlighting
highlightClassMorphs: aClass
	"Pass the message up to the class-diagram, that knows about all the class-morphs in it."
	
	self diagramParent ifNotNilDo: [ :owner | owner highlightClassMorphs: aClass ].