text
setText: aString
	
	self contentText: aString.
	"textMorph setText: textMorph getText."
	self changed: #contentText.