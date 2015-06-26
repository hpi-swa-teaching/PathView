user class selection
createCollectionContainer
	
	SContainerType new
		typeOfContainer: self variableType;
 		typeOfElements: ((self userSelectedContainerClass: 'element-type') ifNil: [ ^ nil ])