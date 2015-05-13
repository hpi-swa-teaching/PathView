testing
test03PercentageColorStrategyForColors
	self assert: (SPMPercentageColorStrategy forColors: {}) = nil.
	self assert: (SPMPercentageColorStrategy 
					forColors: {Color white. Color white.}) = Color white.
	self assert: (SPMPercentageColorStrategy 
					forColors: {Color green. Color yellow}) = (Color r: 0.5 g: 1 b: 0.0).
	self assert: (SPMPercentageColorStrategy 
					forColors: {Color green. Color blue}) = Color cyan.
		self assert: (SPMPercentageColorStrategy 
					forColors: {Color green. Color blue. Color red}) = Color green.
	self assert: (SPMPercentageColorStrategy forColors: {Color blue. Color magenta}) =  (Color r: 0.5 g: 0.0 b: 1).	
	self assert: (SPMPercentageColorStrategy 
					forColors: {Color black. Color white. Color gray}) = Color gray.
	self assert: (SPMPercentageColorStrategy 
					forColors: {(Color h: 10 s: 0.1 v: 0.5). (Color h: 100 s: 0.5 v: 1.0). (Color h: 200 s: 1.0 v: 0.1)}) = (Color h: 103.35616438356165 s:  0.5347985347985348 v:  0.533724340175953).					