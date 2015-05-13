running
runWith: aCollection 
	^ self tracer 
		entryPoints: (aCollection collect: [:each | STestCaseEntryPoint 
													class: each key 
													selector: each value]);
		run.
