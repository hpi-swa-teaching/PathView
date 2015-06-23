user class selection
createCollectionContainer
	
	SContainerType new
		typeOfContainer: type;
 		typeOfElements: ((self userSelectedContainerClass: 'element-type') ifNil: [ ^ nil ])