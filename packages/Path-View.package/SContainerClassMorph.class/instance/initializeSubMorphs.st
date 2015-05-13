initialization
initializeSubMorphs
	
	self 
		addMorph: (SClassNameMorph on: self klass typeOfContainer in: self);
		addMorphBack: 
			(embeddedClassMorph := (SEmbeddedClassMorph
				on: self klass typeOfElements)
				borderWidth: self class embeddedBorderWidth;
				borderColor: self class embeddedBorderColor;
				yourself).