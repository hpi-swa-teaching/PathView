visiting
visitClass: aMorph

	self
		setClassMorphPosition: aMorph;
		setClassMorphColor: aMorph;  
		openNotesOn: aMorph.
	self classStore removeFirst.