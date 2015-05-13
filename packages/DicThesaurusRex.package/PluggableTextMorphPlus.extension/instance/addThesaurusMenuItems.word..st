*DicThesaurusRex
addThesaurusMenuItems: aMenu word: aString 
	| synonyms firstTwoSynonyms |
	synonyms := DTRThesaurus synonymsOf: aString.
	synonyms
		ifEmpty: [^ self].
	firstTwoSynonyms := synonyms.
	synonyms size > 2
		ifTrue: [firstTwoSynonyms := Array with: synonyms first with: synonyms second].
	firstTwoSynonyms
		do: [:synonym | aMenu
				add: synonym
				target: self
				selector: #replaceSelectionWithCamelCased:
				argument: synonym].
	synonyms size > 2
		ifTrue: [aMenu
				add: self moreSynonymsMenuItemText
				target: self
				selector: #showSuggestionWindowFor:withSuggestions:withTitle:
				argumentList: (Array
						with: aString
						with: synonyms
						with: 'synonyms for: ')].
	aMenu addLine