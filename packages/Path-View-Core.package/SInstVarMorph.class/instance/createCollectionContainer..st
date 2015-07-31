user class selection
createCollectionContainer: aClass
	
	^ SContainerType new
		typeOfContainer: aClass;
 		typeOfElements: ((self userSelectedContainerClass: 'element-type') ifNil: [ ^ nil ])