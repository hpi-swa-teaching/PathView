instance creation
createFrom: aMorph
	
	^ self basicNew
		morph: aMorph;
		initialize;
		yourself