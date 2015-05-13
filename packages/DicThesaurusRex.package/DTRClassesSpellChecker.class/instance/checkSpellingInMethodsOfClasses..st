spell checking
checkSpellingInMethodsOfClasses: aCollection
	| foundErrors |
	foundErrors := Dictionary new.
	aCollection do: [ :class | 
		class selectors do: [ :selector | 
			self checkSpellingOfMethod: selector in: class resultSet: foundErrors ].
		class classSide selectors do: [ :selector | 
			self checkSpellingOfClassSideMethod: selector in: class resultSet: foundErrors ]].
	^ {counter. 	inSelectorsCounter. foundErrors}