instance creation
center: aGraph inside: aParentMorph extendAreaBy: percentage
	
	^ self new
		addElement: (SGraphElement buildFrom: aGraph);
		parentMorph: aParentMorph;
		areaExtension: percentage;
		yourself