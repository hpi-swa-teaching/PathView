value range contracts
signalContractViolation
	| context |
	context := self identifyWrapperContext.
	SContractViolation
		signalOn: (self getClientMethod: context) 
		kindOf: (self getContractType: context).