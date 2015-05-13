guesses
getGuesses: aString
	| guesses |
	(self getSuggestionList: aString) in: [:suggestionList |
		guesses := suggestionList asCollection.
		self freeSuggestionList: suggestionList.
		^ guesses]