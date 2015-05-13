*DicThesaurusRex
spellCheckMethodCategory
	| methodList |
	methodList := DTRClassesSpellChecker new erroneousMethodsInMethodList: self messageList ofClass: self selectedClass name.
	methodList
		ifEmpty: [self inform: 'No spelling mistakes found in this message category.' translated]
		ifNotEmpty: [DTRCorrectionWindow new methodList: methodList;
				 showWindowWithTitle: 'category "' , self selectedClassName , '>>' , self selectedMessageCategoryName , '"']