*DicThesaurusRex
addSelectedWordToDictionary
	| word |
	selectionInterval := self selectionInterval.
	word := (self text copyFrom: selectionInterval first to: selectionInterval last) asString.
	styler spellChecker setIgnoredWord: word.
	self text size < 4096
		ifTrue:[styler style: textMorph contents]
		ifFalse:[styler styleInBackgroundProcess:  textMorph contents]