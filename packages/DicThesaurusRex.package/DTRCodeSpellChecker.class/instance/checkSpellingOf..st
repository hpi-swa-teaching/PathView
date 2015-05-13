spelling
checkSpellingOf: aString
	| misspelledWords |
	aString 	ifEmpty: [^ Dictionary new].
	misspelledWords := Dictionary new.
	camelCaseParser foundWordCallback: [:word :isAcronym |
		self checkWord: word asAcronym: isAcronym ifMisspelledPutInto: misspelledWords].
	aString withIndexDo: [:char :index | 
		currentPosition := index.
		camelCaseParser readChar: char].
	currentPosition := currentPosition +1.
	camelCaseParser endWord.
	^ misspelledWords