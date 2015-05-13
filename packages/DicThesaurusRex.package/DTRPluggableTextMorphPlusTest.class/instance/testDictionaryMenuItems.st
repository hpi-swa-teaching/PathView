as yet unclassified
testDictionaryMenuItems
	| menu itemTexts |
	menu := MenuMorph new.
	sut addDictionaryMenuItems: menu word: 'sipmle'.
	self assert: 4 "simple, line, add to dictionary, line" <= menu submorphs size
		description: 'too few menu items for sipmle'.
	self assert: 7 "3, more, line, add, line" >= menu submorphs size
		description: 'too many menu items for sipmle'.
	itemTexts := menu items collect: [:menuItem | menuItem contents].
	self assert: (itemTexts includes: 'simple');
		assert: (itemTexts includes: sut addToDictionaryMenuItemText).
	menu := MenuMorph new.
	sut addDictionaryMenuItems: menu word: 'tezt'.
	
	Smalltalk os platformName asLowercase = 'mac os'
		ifTrue: [self assert: 3 + 1 + 2 "three suggestions, line, add, line"
			equals: (menu submorphs size);
			assert: sut addToDictionaryMenuItemText equals: menu items fourth contents]
		ifFalse: [self assert: 3 + 2 + 2 "three suggestions, more, line, add, line"
			equals: (menu submorphs size);
			assert: sut moreSuggestionsMenuItemText equals: menu items fourth contents;
			assert: sut addToDictionaryMenuItemText equals: menu items fifth contents].