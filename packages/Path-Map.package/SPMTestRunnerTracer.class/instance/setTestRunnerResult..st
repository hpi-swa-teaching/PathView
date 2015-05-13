results
setTestRunnerResult: aTestResult
	aTestResult errors 
		do: [:each | (self testRunner result instVarNamed: 'errors') add: each].
	aTestResult failures 
		do: [:each | 
			each shouldPass
				ifTrue: [(self testRunner result instVarNamed: 'failures') add: each]
				ifFalse: [(self testRunner result instVarNamed: 'passed') add: each]].
	aTestResult passed 
		do: [:each | 
			each shouldPass
				ifTrue: [(self testRunner result instVarNamed: 'passed') add: each]
				ifFalse: [(self testRunner result instVarNamed: 'failures') add: each]].						
	self testRunner updateStatus: true.