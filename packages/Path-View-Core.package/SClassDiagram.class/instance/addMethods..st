layout graph-based
addMethods: associations
	"associations is a collection of Associations from Class to method-selector-symbols.
	If one of the classes is not part of the diagram, the according association is ignored.
	Return a collection of morphs, that have been opened."
	
	^ associations
		collect: [ :association | self addMethod: association ]
		thenSelect: #notNil