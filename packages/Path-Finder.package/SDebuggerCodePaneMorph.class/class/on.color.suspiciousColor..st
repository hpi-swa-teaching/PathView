instance creation
on: aCallNode color: aColor suspiciousColor: anotherColor

	^ (self on: aCallNode color: aColor)
		suspiciousColor: anotherColor;
		createLabelMorph;
		createExclamationMark;
		yourself
