accessing
showTestResults
	| contracts noContracts contractFailed noDifference contractOnly noFail |
	
	contractFailed := 0.
	noDifference := 0.
	contractOnly := 0.
	noFail := 0.
	
	Transcript show: '--- Results (see also logFile) ---'; cr.
	noContracts := self testResults select: [:item | (item at: #tag) = #nocontracts].
	contracts := self testResults select: [:item | (item at: #tag) = #contracts].
	
	noContracts do: [:item | | withContract | 
		withContract := contracts detect: [:c | 
			((c at: #methodReference) = (item at: #methodReference))].
		"A Contract caught an anomaly"		
		((withContract at: #contractFails) > 0) 
		ifTrue:
			[(((item at: #testFails) = 0) and: [(item at: #testErrors) = 0]) 
			"The tests did not notice the anomaly"
			ifTrue: [contractOnly := contractOnly + 1]
			"The anomaly was caught before a test failed"
			ifFalse: [((withContract at: #testFails) = 0) 
				ifTrue: [contractFailed := contractFailed + 1]]]
		ifFalse: [(((withContract at: #testFails) = 0) and: 
			[(withContract at: #testErrors) = 0]) 
			"no one discovered the anomaly"
			ifTrue: [noFail := noFail + 1]
			ifFalse: [noDifference := noDifference + 1]]].
				
	Transcript show: 'Mutated ', ((self testResults size - 1) / 2) asString, ' methods.'; cr.
	Transcript show: 'No difference: ', noDifference asString, 
		' Contract failed: ', contractFailed, 
		' Only contract failed: ', contractOnly, 
		' Anomaly unnoticed: ', noFail; cr