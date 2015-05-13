class initialization
readThesaurusDictionaryFromLines: aStringStream
	
	| entryCollection currentLine newDictionary |
	currentLine := 2.
	aStringStream upTo: Character lf. "skip first line"
	newDictionary := Dictionary new.
	[aStringStream atEnd]
		whileFalse: [ | lineTokens |  
					lineTokens := (aStringStream upTo: Character lf) findTokens: '|'.
					newDictionary at: lineTokens first put: (entryCollection := OrderedCollection new: lineTokens second asInteger).
					lineTokens second asInteger timesRepeat: 
						[ | synonymLineTokens entry | 
						  currentLine := currentLine + 1.
						  synonymLineTokens := (aStringStream upTo: Character lf) findTokens: '|'.
						  entry := DTRThesaurusEntry new origin: lineTokens first; partOfSpeech: synonymLineTokens first; 
							meaning: synonymLineTokens second; synonyms: synonymLineTokens.
						  synonymLineTokens removeFirst: 2.
						  (synonymLineTokens isEmpty) ifTrue: [synonymLineTokens add: entry meaning].
						  entryCollection add: entry ].
					currentLine := currentLine + 1].
	^ newDictionary