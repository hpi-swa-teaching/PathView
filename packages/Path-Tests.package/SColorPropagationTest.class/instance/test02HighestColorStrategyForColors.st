testing
test02HighestColorStrategyForColors
	self assert: (SPMHighestColorStrategy forColors: {}) = nil.
	self assert: (SPMHighestColorStrategy 
					forColors: {Color white. Color white.}) = Color white.
	self assert: (SPMHighestColorStrategy 
					forColors: {Color green. Color yellow}) = Color yellow.
	self assert: (SPMHighestColorStrategy 
					forColors: {Color green. Color blue}) = Color green.
		self assert: (SPMHighestColorStrategy 
					forColors: {Color green. Color blue. Color red}) = Color red.
	self assert: (SPMHighestColorStrategy forColors: {Color blue. Color magenta}) = Color blue.	
	self assert: (SPMHighestColorStrategy 
					forColors: {Color black. Color white. Color gray}) = Color gray.
	self assert: (SPMHighestColorStrategy 
					forColors: {(Color h: 10 s: 0.1 v: 0.5). (Color h: 100 s: 0.5 v: 1.0). (Color h: 200 s: 1.0 v: 0.1)}) = (Color h:  10.381231671554254 s: 1.0 v: 1.0).					