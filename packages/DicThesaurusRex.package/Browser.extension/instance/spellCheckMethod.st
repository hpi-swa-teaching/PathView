*DicThesaurusRex
spellCheckMethod
	| methodList |
	methodList := DTRClassesSpellChecker new erroneousMethodsInMethodList: {self selectedMessageName} ofClass: self selectedClassName.
	methodList
		ifEmpty: [self inform: 'No spelling mistakes found in this method.' translated]
		ifNotEmpty: [DTRCorrectionWindow new methodList: methodList;
				 showWindowWithTitle: '"' , self selectedClassName , '>>' , self selectedMessageName , '"']