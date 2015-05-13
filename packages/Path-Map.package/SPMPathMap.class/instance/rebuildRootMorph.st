visualization
rebuildRootMorph
	self rootMorph 
		reset;
		buildChildren.
	self tracer ifNotNil: [
		self tracer 
			setColorPropagation;
			visualizeAllInformation.
		self addViolations].