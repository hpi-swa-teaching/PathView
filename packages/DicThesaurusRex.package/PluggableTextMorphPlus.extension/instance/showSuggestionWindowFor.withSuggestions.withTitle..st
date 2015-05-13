*DicThesaurusRex
showSuggestionWindowFor: aSelectedWord withSuggestions: aSuggestionList withTitle: aString
	|suggestionWindow| 
	suggestionWindow := DTRSuggestionWindow new
		title: (aString, aSelectedWord);
		textMorph: self;
		showSuggestions: aSuggestionList;
		showWindow