testing
test09bStartBrowserWithFaultLocalizationIconsFromPathFinder
	<timeout: 10>
	| menuMorph methodMorph pathFinder morph browser |
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
	self assert: (morph icon colorAt: 1@1) =  (Color r: 0.815 g: 1 b: 0.0).
	pathFinder model callTreeModel browseMethod.
	pathFinder abandon.
	browser := self findBrowserFor: #SSBFaultLocalizationExampleTest -> #test213.
	self 
		assert: browser model methodColors notNil;
		assert: browser model methodColors notEmpty;
		assert: (browser model methodColors 
				at: (MethodReference 
					class: SSBFaultLocalizationExampleTest 
					selector:#test213)) = 
				Color yellow;
		assert: ((browser model iconForMessage: 2) colorAt: 10@10) = 
				Color yellow;
		assert: ((browser model iconForClass: 7) colorAt: 10@10) = 
				Color yellow.
	browser abandon.