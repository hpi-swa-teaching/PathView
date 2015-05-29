instance creation
center: aGraph inside: aParentMorph
	
	^ self new
		addElement: (SGraphElement buildFrom: aGraph);
		parentMorph: aParentMorph;
		yourself