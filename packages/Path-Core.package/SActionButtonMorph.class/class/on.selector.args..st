instance creation
on: aModel selector: aSymbol args: aCollection

	^ self new 
		actionModel: aModel;
		actionSelector: aSymbol;
		actionArgs: aCollection;
		yourself