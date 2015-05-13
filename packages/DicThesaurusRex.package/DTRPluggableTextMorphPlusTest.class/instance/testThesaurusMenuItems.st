as yet unclassified
testThesaurusMenuItems
	| menu synonyms |
	menu := MenuMorph new.
	synonyms := DTRThesaurus synonymsOf: 'new'.
	sut addThesaurusMenuItems: menu word: 'new'.
	self assert: 4 "first, second, more, line" equals: (menu submorphs size).
	self assert: {synonyms first. synonyms second. sut moreSynonymsMenuItemText} equals: ((menu submorphs select: [:morph | morph isKindOf: MenuItemMorph])
		collect: [:menuItem | menuItem contents]) asArray
		