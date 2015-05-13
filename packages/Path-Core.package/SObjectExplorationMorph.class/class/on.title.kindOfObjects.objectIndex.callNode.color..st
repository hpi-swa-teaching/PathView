instance creation
on: aCodePane title: aString kindOfObjects: aSymbol objectIndex: aNumber callNode: aCallNode color: aColor

	^ self new
		codePane: aCodePane;
		title: aString;
		callNode: aCallNode;
		kindOfObject: aSymbol;
		objectIndex: aNumber;
		color: aColor;
		createMorphs;
		yourself