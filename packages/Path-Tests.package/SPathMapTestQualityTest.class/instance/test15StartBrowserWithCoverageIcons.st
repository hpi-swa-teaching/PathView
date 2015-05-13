testing
test15StartBrowserWithCoverageIcons
	<timeout: 10>
	| morph browser |
	self getOptionWithLinesOfCodeMetric: true.	
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.	
	morph := self methodMorph: (MethodReference class: SSBFaultLocalizationExample selector: #midX:Y:Z:).
	morph browse.
	browser := self findBrowserFor: #SSBFaultLocalizationExample -> #midX:Y:Z:.
	self 
		assert: browser model methodColors notNil;
		assert: browser model methodColors notEmpty;
		assert: (browser model methodColors 
				at: (MethodReference 
					class: SSBFaultLocalizationExample 
					selector:#midX:Y:Z:)) = 
				(Color r: 0.5 g: 0.5 b: 0.0);
		assert: ((browser model iconForMessage: 1) colorAt: 10@10) = 
				(Color r: 0.501 g: 0.501 b: 0.0);
		assert: ((browser model iconForClass: 1) colorAt: 10@10) = 
				Color yellow.
	browser abandon.