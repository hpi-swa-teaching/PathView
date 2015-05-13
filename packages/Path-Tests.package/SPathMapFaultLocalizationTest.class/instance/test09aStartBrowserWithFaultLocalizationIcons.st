testing
test09aStartBrowserWithFaultLocalizationIcons
	<timeout: 10>
	| morph browser |
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
				(Color r: 0.816 g: 1 b: 0.0);
		assert: ((browser model iconForMessage: 1) colorAt: 10@10) = 
				(Color r: 0.815 g: 1 b: 0.0);
		assert: ((browser model iconForClass: 7) colorAt: 10@10) = 
				Color yellow.
	browser abandon.