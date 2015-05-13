testing
test07RefinementOfFaultLocalizationAtStatements
	<timeout: 10>
	| morph browser highlights |
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.	
	morph := self methodMorph: (MethodReference class: SSBFaultLocalizationExample selector: #midX:Y:Z:).
	morph browse.
	browser := self findBrowserFor: #SSBFaultLocalizationExample -> #midX:Y:Z:.
	highlights := browser model codePane text runs 
		select: [:each | each includes: TextEmphasis underlined].
	self 
		assert: highlights size = 134;
		assert: (highlights at: 74) first color = (Color r: 1.0 g: 0.586 b: 0.0).
	browser abandon.	