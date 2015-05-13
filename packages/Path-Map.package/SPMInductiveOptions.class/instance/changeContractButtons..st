spec commands
changeContractButtons: aBoolean.
	self pathMap project hasContracts: aBoolean.
	self pathMap testRunner changed: #hasContracts.
	self 
		changed: #isAddingContractsPossible;
		changed: #isRemovingContractsPossible.