private
replaceOnly: aWord with: aNewWord
	| selectedString |
	selectedString := ui methodEdit textMorph editor selection asString.
	selectedString asLowercase = aWord asString asLowercase
		ifTrue: [ | newWord |
			newWord := self adaptCasingOf: aNewWord asString asLowercase to: selectedString.
			ui methodEdit replaceSelectionWith: newWord.
			self spellCheckTextAgain ]
		ifFalse: [errorIndex := errorIndex + 1].
	errorIndex <= errors size
		ifTrue: [ self markNextError. ^ true ]
		ifFalse: [ ^ false ]