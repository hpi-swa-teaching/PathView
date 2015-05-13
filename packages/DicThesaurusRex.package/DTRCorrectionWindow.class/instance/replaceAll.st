event handling
replaceAll
	| continue word newWord |
	ui methodEdit textMorph selection isEmpty ifTrue: [^ self markErrorInMethodAgain].
	continue := true.
	word := ui methodEdit textMorph selection.
	newWord := ui suggestionWidget currentItem text.
	errorIndex := 1.
	self markNextErrorInMethod.
	[continue] whileTrue: [ continue := self replaceOnly: word with: newWord ].
	errorIndex := 1.
	self markNextErrorInMethod