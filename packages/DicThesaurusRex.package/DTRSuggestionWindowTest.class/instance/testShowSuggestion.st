as yet unclassified
testShowSuggestion
	| list |
	list := DTRThesaurus synonymsOf: 'new'.
	suggestionWindow showSuggestions: list.
	self assert: suggestionWindow ui listWidget textList equals: list