display
showMethodText: aText ofMethodNamed: aMethodName ofClass: aClass
	errors := spellChecker checkSpellingOf: aText asString.
	errorIndex := 1.
	currentClass := aClass.
	ui methodEdit changeText: aText.
	ui methodLabel text: 'Method:   ', aClass name, '>>', aMethodName.
	self markNextError