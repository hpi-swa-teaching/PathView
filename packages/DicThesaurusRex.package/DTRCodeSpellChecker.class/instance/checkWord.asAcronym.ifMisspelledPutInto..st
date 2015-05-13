updating
checkWord: aString asAcronym: isAcronym ifMisspelledPutInto: aDictionary
	| position |
	isAcronym
		ifTrue: [position:=currentPosition - aString size -1] "acronyms are detected one char late"
		ifFalse: [position:=currentPosition - aString size].
	(self isSpelledCorrectly: aString)
			ifFalse: [aDictionary at: position put: aString withNonLettersRemoved]