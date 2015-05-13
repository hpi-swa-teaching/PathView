*DicThesaurusRex
addDictionaryMenuItems: aMenu word: aString
	| h suggestions firstThreeSuggestions |
	h := DTRCodeSpellChecker new.
	(h spell: aString)
		ifTrue: [ ^ self ].
	suggestions := h getGuesses: aString.
	firstThreeSuggestions := suggestions.
	suggestions size > 3
		ifTrue: [ firstThreeSuggestions := Array with: suggestions first with: suggestions second with: suggestions third ].
	firstThreeSuggestions
		do: [ :suggestedWord | 
			aMenu
				add: suggestedWord
				target: self
				selector: #replaceSelectionWithCamelCased:
				argument: suggestedWord ].
	suggestions size > 3
		ifTrue: [ 
			aMenu
				add: self moreSuggestionsMenuItemText
				target: self
				selector: #showSuggestionWindowFor:withSuggestions:withTitle:
				argumentList: (Array with: aString with: suggestions with: 'suggestions for: ') ].
	aMenu
		addLine;
		add: self addToDictionaryMenuItemText action: #addSelectedWordToDictionary;
		addLine