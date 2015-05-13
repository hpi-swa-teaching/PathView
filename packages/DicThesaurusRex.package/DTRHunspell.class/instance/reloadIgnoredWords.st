ignored words
reloadIgnoredWords
	IgnoredWords ifNil: [^ self].
	IgnoredWords do: [:word | self privateAddIgnoredWord: word]