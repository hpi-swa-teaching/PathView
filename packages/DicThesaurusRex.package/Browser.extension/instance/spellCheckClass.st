*DicThesaurusRex
spellCheckClass
	| menu methodList |
	methodList := DTRClassesSpellChecker new erroneousMethodsInClass: self selectedClass name.
	methodList
		ifEmpty: [self inform: 'No spelling mistakes found in this class.' translated]
		ifNotEmpty: [menu := DTRCorrectionWindow new.
			menu
				methodList: methodList;
				showWindowWithTitle: '"' , self selectedClassName , '"']