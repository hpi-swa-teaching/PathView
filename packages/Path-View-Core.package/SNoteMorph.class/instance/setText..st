text
setText: aString
	
	self contentText: aString.
	self changed: #contentText.