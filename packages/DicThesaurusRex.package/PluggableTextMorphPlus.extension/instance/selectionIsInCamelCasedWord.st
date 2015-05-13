*DicThesaurusRex
selectionIsInCamelCasedWord
	| textSize wordStart wordEnd expandedSelection |
	textMorph editor selectionInterval size = 0 ifTrue: [^ false].
	wordStart := textMorph editor startIndex.
	[wordStart > 1 and: [(self text at: wordStart - 1) isAlphaNumeric]]
		whileTrue: [wordStart := wordStart - 1].
	textSize := self text size.
	wordEnd := textMorph editor stopIndex min: textSize.
	[wordEnd < (textSize - 1) and: [(self text at: wordEnd + 1) isAlphaNumeric]]
		whileTrue: [wordEnd := wordEnd + 1].
	expandedSelection := self text asString copyFrom: wordStart to: wordEnd.
	^ expandedSelection substrings
		anySatisfy: [:word | | rest |
			rest := word copyFrom: (word indexOf: (word detect: #isAlphaNumeric)) to: word size.
			(rest at: 1) isUppercase ifTrue: [rest := rest copyFrom: 2 to: rest size].
			rest anySatisfy: [:char | char isLowercase not and: [char isSeparator not]]]