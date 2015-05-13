spec commands
addContracts
	| injector |
	injector := SContractInjector covering: self pathMap project.
	injector apply.
	self changeContractButtons: true.