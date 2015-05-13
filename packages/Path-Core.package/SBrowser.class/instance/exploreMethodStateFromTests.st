start tools
exploreMethodStateFromTests
	| coveredTests methodReference state tracer result testcase |
	self selectedClass ifNil: [^ self inform: 'Please select a class first.'].
	self selectedMessageName ifNil: [^ self inform: 'Please select a method first.'].
	(SProject current isClassInProject: self selectedClass theNonMetaClass)
		ifFalse: [^ self inform: 'Class is not in current Path project.'].
	methodReference := MethodReference 
							class: self selectedClass 
							selector: self selectedMessageName.
	coveredTests := SProject current coveredTestsFor: methodReference.
	coveredTests ifEmpty: [^ self inform: 'No covering test found.'].
	state := self askForMethodStateOf: methodReference.							
	tracer := (SStateViewMethodTracer 
				onMethodReference: methodReference 
				argument: state 
				tests: coveredTests) 
					run.
	result := self chooseResult: tracer valuesAsSet.
	result ifNil: [^ nil].
	testcase := self chooseTestFrom: tracer valueDict and: result.
	testcase ifNil: [^ nil].
	SPathFinder openOn: testcase asMethodReference.