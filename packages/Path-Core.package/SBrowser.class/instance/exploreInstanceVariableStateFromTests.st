start tools
exploreInstanceVariableStateFromTests
	| coveredTests stateSymbol result testcase tracer |
	self selectedClass ifNil: [^ self inform: 'Please select a class first.'].  
	(SProject current isClassInProject: self selectedClass theNonMetaClass)
		ifFalse: [^ self inform: 'Class is not in current Path project.'].
	coveredTests := SProject current coveredTestsForClass: self selectedClass.
	coveredTests ifEmpty: [^ self inform: 'No covering test found.'].
	stateSymbol := self askForStateOf: self selectedClass.
	tracer := (SStateViewInstanceVariableTracer 
				onClass: self selectedClass instVarName: stateSymbol) 
					run.
	result := self chooseResult: tracer valuesAsSet.
	result ifNil: [^ nil].
	testcase := self chooseTestFrom: tracer valueDict and: result.
	testcase ifNil: [^ nil].
	SPathFinder openOn: testcase asMethodReference.