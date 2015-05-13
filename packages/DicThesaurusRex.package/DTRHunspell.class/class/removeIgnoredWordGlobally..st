ignored words
removeIgnoredWordGlobally: aString
	self instance privateRemoveIgnoredWord: aString.
	IgnoredWords ifNotNil: [:ignoredWords | ignoredWords remove: aString ifAbsent: []]