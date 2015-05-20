instance creation
newButtonWithText: aString andAction: aCodeString
	^(self new)
		setTextAt: 1 to: aString;
		forceTextLocked: true;
		addMouseUpActionWith: aCodeString;
		yourself