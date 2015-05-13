*DicThesaurusRex
spellCheckCategory
	| methodList |
	methodList := DTRClassesSpellChecker new erroneousMethodsInCategory: self selectedSystemCategoryName.
	methodList
		ifEmpty: [self inform: 'No spelling mistakes found in this category.' translated]
		ifNotEmpty: [DTRCorrectionWindow new methodList: methodList;
				 showWindowWithTitle: 'system category "' , self selectedSystemCategoryName , '"']