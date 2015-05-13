running
setUp
	| methodList |
	methodList := DTRClassesSpellChecker new erroneousMethodsInClass: 'DTRExmple1'.
	sut := DTRCorrectionWindow new.
	sut methodList: methodList.
	sut showNextMethod.
	ignoredWords := OrderedCollection new