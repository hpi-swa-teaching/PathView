spec commands
isAddingContractsPossible
	^ self pathMap project hasContracts not
		and: [self pathMap project harvestedBuckets notEmpty]
