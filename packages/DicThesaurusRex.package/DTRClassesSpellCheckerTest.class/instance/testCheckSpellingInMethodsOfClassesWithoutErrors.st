tests
testCheckSpellingInMethodsOfClassesWithoutErrors
	"Tests DTRClassesSpellChecker>>#checkSpellingInMethodsOfClasses:"
	| result |
	result := sut checkSpellingInMethodsOfClasses: {DTRThesaurusEntry}.
	self assert: 0 equals: result first;
		assert: 0 equals: result second;
		assert: result third isDictionary;
		assert: result third isEmpty