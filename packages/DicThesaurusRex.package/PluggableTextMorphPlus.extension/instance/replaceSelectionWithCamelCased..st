*DicThesaurusRex
replaceSelectionWithCamelCased: aString
	self selectionIsInCamelCasedWord
		ifTrue: [(textMorph editor startIndex > 1 and: [(self text at: textMorph editor startIndex - 1) isAlphaNumeric or: [(textMorph editor selection at: 1) isUppercase]])
			ifTrue: [self replaceSelectionWith: aString asCamelCasedIdentifier withFirstCharacterUppercase]
			ifFalse: [self replaceSelectionWith: aString asCamelCasedIdentifier]]
		ifFalse: [self replaceSelectionWith: aString]