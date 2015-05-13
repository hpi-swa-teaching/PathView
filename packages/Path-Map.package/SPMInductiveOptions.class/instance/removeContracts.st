spec commands
removeContracts
	| injector |
	injector := SContractInjector covering: self pathMap project.
	injector revert.
	self changeContractButtons: false.