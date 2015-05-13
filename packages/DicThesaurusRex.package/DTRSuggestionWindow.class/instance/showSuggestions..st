initialization
showSuggestions: aSuggestionList 
	aSuggestionList do: [:suggestion | (ui listWidget) addText: suggestion]