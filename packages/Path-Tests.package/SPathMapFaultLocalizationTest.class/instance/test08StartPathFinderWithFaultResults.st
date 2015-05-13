testing
test08StartPathFinderWithFaultResults
	<timeout: 20>
	| methodMorph menuMorph pathFinder morph |
	self 
		selectTests: (Set with: SSBFaultLocalizationExampleTest);
		runAllTests.	
	methodMorph := self methodMorph: (MethodReference 
											class: SSBFaultLocalizationExampleTest
											selector: #test213).
	menuMorph := self activateMenuFor: methodMorph.
	self pushButton: #pathfinderMethod on: menuMorph.
	pathFinder := self findPathfinderFor: SSBFaultLocalizationExampleTest -> #test213.
	morph := (pathFinder findA: SPluggableTreeMorph) scroller submorphs second.
	self 
		assert: morph notNil;
		assert: morph contents = '{40%} SSBFaultLocalizationExampleTest>>setUp';
		assert: morph icon bits first =  4291886848.
	pathFinder abandon.		