tests
testErroneousMethodsInCategory
	"Tests DTRClassesSpellChecker>>#erroneousMethodsInCategory:"
	self assert: ({DTRExample2 methodDict at: #randomTxt. DTRExample2 methodDict at: #randomTxt:. DTRExmple1 methodDict at: #randmVariable:}
		hasEqualElements: (sut erroneousMethodsInCategory: 'DicThesaurusRex-TestExample'))