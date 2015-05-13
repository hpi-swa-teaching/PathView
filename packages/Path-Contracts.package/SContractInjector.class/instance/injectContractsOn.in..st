contract creation
injectContractsOn: aSelector in: aClass
	
	| methodWrapper afterMethod |
	"First, make sure that no nested contracts are generated"
	self removeContractsOn: aSelector in: aClass.
	methodWrapper := SContractWrapper on: aSelector inClass: aClass.
	afterMethod := (self generatePostconditionsOn: aSelector in: aClass).
	methodWrapper 
		beforeMethod: (self generatePreconditionsOn: aSelector in: aClass);
		afterMethod: afterMethod.
	methodWrapper install