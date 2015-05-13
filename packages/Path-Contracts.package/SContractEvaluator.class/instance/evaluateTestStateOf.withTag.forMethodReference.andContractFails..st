public api
evaluateTestStateOf: aTestRunner withTag: aTag forMethodReference: methodReference andContractFails: anInteger

	| failures errors results |
	failures := aTestRunner failedList size.
	errors := aTestRunner errorList size.
	results := Dictionary newFromPairs: 
		{#tag. aTag. 
		#methodReference. (methodReference actualClass name, '>>', methodReference methodSymbol) asSymbol. 
		#testFails. failures. 
		#testErrors. errors. 
		#contractFails. anInteger}.
	self testResults add: results.