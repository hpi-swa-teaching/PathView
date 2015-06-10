as yet unclassified
testSaveDiagram
	| testName testKlass instance|
	testName := 'fp'.
	testKlass := SClassMorph on: testClass.
	

	self mock: #request:initialAnswer: of: UIManager default class toReturn: testName  during:[
	instance := SClassDiagram new.
	instance instVarNamed: 'classMorphs' put: testKlass.
	instance save.
	
]
