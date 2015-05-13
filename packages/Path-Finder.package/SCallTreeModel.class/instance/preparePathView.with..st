path view
preparePathView: pathViewMorph with: aSetOfClasses
	"This part is extracted from openPathViewWith: to let subclasses make additional
	preparations, BEFORE the diagram layouts."
	
	pathViewMorph addClasses: aSetOfClasses.
	self getMethodsFromTrace
		collect: [ :each | each actualClass -> each methodSymbol ]
		thenDo: [ :each | pathViewMorph pinMethod: each ].