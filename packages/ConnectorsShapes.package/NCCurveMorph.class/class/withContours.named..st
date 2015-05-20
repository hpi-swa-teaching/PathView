instance creation
withContours: aListOfContours named: aName
	^(self basicNew)
		initializeWithContours: aListOfContours andName: aName;
		yourself