testing
test01DominantColorStrategyForColors
	self assert: (SPMDominantColorStrategy forColors: {}) = nil.
	self assert: (SPMDominantColorStrategy 
					forColors: {Color red. Color green. Color yellow}) = Color red.
	self assert: (SPMDominantColorStrategy 
					forColors: {Color green. Color yellow}) = Color yellow.
	self assert: (SPMDominantColorStrategy 
					forColors: {Color green. Color blue}) = Color green.
	self assert: (SPMDominantColorStrategy forColors: {Color blue. Color magenta}) = nil.	