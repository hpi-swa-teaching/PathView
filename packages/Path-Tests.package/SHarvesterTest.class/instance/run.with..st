running
run: aTestClass with: aTestSymbol
	^ self tracer 
		entryPoints: {(STestCaseEntryPoint class: aTestClass selector: aTestSymbol)};
		run.
