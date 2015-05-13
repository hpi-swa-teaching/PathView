instance creation
on: aCodePane title: aString object: anObject color: aColor

	^ self new
		codePane: aCodePane;
		title: aString;
		objectToExplore: anObject;
		color: aColor;
		createMorphs;
		yourself