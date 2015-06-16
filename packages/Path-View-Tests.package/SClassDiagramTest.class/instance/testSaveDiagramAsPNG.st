testing
testSaveDiagramAsPNG
	| instance testName staticBounds|
	staticBounds := 50@50 corner: 40@30.
	
	self mock: #canvasWithoutWhitespace of: SClassDiagram toReturn: staticBounds during:[ 
		instance := klass new.
		instance instVarNamed: 'classMorphs' put: (SClassMorph on: testClass).
		testName := FileDirectory default nextNameFor: '_pathview' extension: 'png'.
		instance savePNG.
		self assert: [ FileDirectory default fileExists: testName].]