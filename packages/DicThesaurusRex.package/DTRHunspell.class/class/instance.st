singleton
instance
	^ Instance ifNil: [Instance := self platformSpecificSubclass
										basicNew
										initialize;
										yourself]