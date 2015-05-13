api callouts
apiSpell: aHunspellHandle word: aString 
	| result |
	aString	ifEmpty: [^ 1].
	aString = aString asUppercase ifTrue: [^ 0].
	result := aHunspellHandle checkSpellingOf: aString startingAt: 1.
	result first = 2147483648
		ifTrue: [^ 1]
		ifFalse: [^ 0]