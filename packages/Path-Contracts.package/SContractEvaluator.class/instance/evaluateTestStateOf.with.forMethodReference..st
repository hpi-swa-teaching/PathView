public api
evaluateTestStateOf: aTestRunner with: aTag forMethodReference: methodReference
	^ self 
		evaluateTestStateOf: aTestRunner 
		withTag: aTag 
		forMethodReference: methodReference 
		andContractFails: 0