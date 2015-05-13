*DicThesaurusRex
getMenuExtendedWithDicThesaurusItems: shiftKeyState originalMenu: originalMenu
	| aMenu word |
	aMenu := MenuMorph new defaultTarget: model.
	word := (self textMorph editor selection) asString withBlanksCondensed asLowercase.
	self addDictionaryMenuItems: aMenu word: word.
	self addThesaurusMenuItems: aMenu word: word.
	originalMenu submorphs do: [:morph | aMenu addMenuItem: morph copy].
	^ aMenu