instance creation
offsetting: anotherGraph by: anOffset
	"anotherGraph can be anything, that is wrappable by a graph-element."
	
	^ self new
		addElement: (SGraphElement buildFrom: anotherGraph);
		offset: anOffset;
		yourself