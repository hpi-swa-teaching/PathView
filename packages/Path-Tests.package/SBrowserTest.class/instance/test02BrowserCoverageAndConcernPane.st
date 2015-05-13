testing
test02BrowserCoverageAndConcernPane
	self assert: (self existMorphOf: PluggableListMorphPlus named: #testCoverage).
	self assert: (self existMorphOf: PluggableTreeMorph named: #concernTree).	
		
