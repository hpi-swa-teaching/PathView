ignored words
setIgnoredWords: aStringCollection
	(IgnoredWords ifNil: [IgnoredWords := Set new])
		addAll: aStringCollection.
	aStringCollection do: [:word | self apiAdd: handle word: word]