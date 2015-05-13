testing
test14SortMethodsByMetric
	<timeout: 10>
	| options |
	self runAllTests.
	options := self getOptionWithLinesOfCodeMetric: false.	
	self assert: ((self classMorph: SSBClassA) 
		childrenMorphs at: #'no category') submorphs last sourceCodeEntity = #+.
	options sortMethodsToStaticMetric.
	self assert: ((self classMorph: SSBClassA) 
		childrenMorphs at: #'no category') submorphs last sourceCodeEntity = #complexMethod:.