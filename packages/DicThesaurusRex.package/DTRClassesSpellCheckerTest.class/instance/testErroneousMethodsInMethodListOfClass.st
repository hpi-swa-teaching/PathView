tests
testErroneousMethodsInMethodListOfClass
	"Tests DTRClassesSpellChecker>>#erroneousMethodList:OfClass:"
	| list |
	list := sut 
			erroneousMethodsInMethodList: #(#randomTxt #randomTxt: ) 
			ofClass: 'DTRExample2'.
	self assert: (list includes: DTRExample2>>#randomTxt).
	self assert: (list includes: DTRExample2>>#randomTxt:).