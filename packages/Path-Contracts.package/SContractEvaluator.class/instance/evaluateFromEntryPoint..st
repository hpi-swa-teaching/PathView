public api
evaluateFromEntryPoint: aMethodReference
	"Start iterating at aMethodReference and mutate all covered methods"
	| mutationEngine contractFailures |
	self testResults: (OrderedCollection with: self class resultHeader).
	self do: 
		[mutationEngine := SContractMutationEngine on: self methodsCoveredByTests.
		mutationEngine mutationsDo: [:methodReference |
			"Transcript cr; show: 'Mutated ', methodReference asString; cr."
			[self pathMap runTests: #suiteAll] runWithoutContracts.
			self 
				evaluateTestStateOf: self pathMap testRunner 
				with: #nocontracts 
				forMethodReference: methodReference.
			contractFailures := 0.
			[[self pathMap runTests: #suiteAll] runWithContracts: 
				self coveredProject projectName] 
			on: SContractViolation  do: [:exception | 
				"Transcript show: 'Contract: ', exception messageText; cr."
				contractFailures := contractFailures + 1. 
				exception return: false].
			self 
				evaluateTestStateOf: self pathMap testRunner 
				withTag: #contracts 
				forMethodReference: methodReference 
				andContractFails: contractFailures
				
		] entryPoint: aMethodReference.
		] withCurrentProject: self coveredProject projectName.
	self storeCollection: self testResults asCSVFile: 'Evaluation ', TimeStamp now, '.csv'.
	self showTestResults.