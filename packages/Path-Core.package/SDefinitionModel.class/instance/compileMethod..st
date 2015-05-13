accessing
compileMethod: newSource

	^ defClass compile: newSource classified: (
		defClass organization categoryOfElement: defSelector).
