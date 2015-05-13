accessing
contents: newSource
	| newSelector | 
	newSelector := self compileMethod: newSource.
	newSelector ifNil: [^ false]. 
	
	^ true