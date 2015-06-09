text
setText: aString
	
	contentText := aString.
	textMorph setText: textMorph getText.
	self changed: #contentText.