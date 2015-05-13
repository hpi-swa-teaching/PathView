ignored words
privateAddIgnoredWord: aString
	aString ifEmpty: [Error signal: 'Adding the empty word is not allowed'].
	self apiAdd: handle word: aString.