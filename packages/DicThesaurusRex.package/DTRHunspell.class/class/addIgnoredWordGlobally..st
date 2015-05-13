ignored words
addIgnoredWordGlobally: aString
	(IgnoredWords ifNil: [ IgnoredWords := Set new ]) add: aString.
	self instance privateAddIgnoredWord: aString.