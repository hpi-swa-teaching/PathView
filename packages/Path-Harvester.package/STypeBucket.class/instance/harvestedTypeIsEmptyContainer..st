initialize-release
harvestedTypeIsEmptyContainer: aType
	^ (((aType class = SContainerType) and: 
		[aType typeOfElements isNil]) and: 
		[aType typeOfKeys isNil])