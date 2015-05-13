tests
testCheckSpellingInMethodsOfClassesWithErrors
	"Tests DTRClassesSpellChecker>>#checkSpellingInMethodsOfClasses:"
	| result |
	result := sut checkSpellingInMethodsOfClasses: {self class}.
	self assert: result first > 0;
		assert: result second > 0;
		assert: result third isDictionary;
		assert: result third size > 0;
		assert: (result third allSatisfy: [:collection | 
			self assert: collection isCollection;
				assert: collection first isInteger;
				assert: collection second isCollection;
				assert: (collection second allSatisfy: [:pair |
					self assert: pair isCollection;
						assert: pair first isBehavior;
						assert: pair second isSymbol.
					true]). true])