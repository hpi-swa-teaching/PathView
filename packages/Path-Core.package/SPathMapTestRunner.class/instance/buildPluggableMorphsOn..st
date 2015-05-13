building
buildPluggableMorphsOn: aBuilder
	| window |
	window := aBuilder pluggableWindowSpec new
		model: self; 
		label: self label; 
		extent: self extent;
		children: (OrderedCollection new 		
			add: ((self buildClassesWith: aBuilder)
				frame: (0.0 @ 0.00 corner: 0.22 @ 0.775 );
				yourself);
			add: ((self buildStatusWith: aBuilder)
				frame: (0.22 @ 0.00 corner: 1.00 @ 0.04);
				yourself);
			add: ((self buildProjectStatisticWith: aBuilder)
				frame: (0.22 @ 0.946 corner: 1.00 @ 1.00);
				yourself);
			add: ((self buildButtonsWith: aBuilder)
				frame: (0.00 @ 0.775 corner: 0.22 @ 1.00);
				yourself);
			add: ((self buildTestQualityFlapWith: aBuilder)
				frame: (1.0 @ -0.0075 corner: 1.3 @ 0.4795);
				yourself);
			add: ((self buildProfilingFlapWith: aBuilder)
				frame: (1.0 @ 0.064 corner: 1.3 @ 0.564);
				yourself);
			add: ((self buildFaultLocalizationFlapWith: aBuilder)
				frame: (1.0 @ 0.137 corner: 1.3 @ 0.687);
				yourself);
			add: ((self buildInductiveAnalysisFlapWith: aBuilder)	
				frame: (1.0 @ 0.208 corner: 1.3 @ 0.708);
				yourself);											
			add: ((self buildTraceabilityFlapWith: aBuilder)
				frame: (1.0 @ 0.281 corner: 1.3 @ 0.881);
				yourself);
			add: ((self buildOptionsFlapWith: aBuilder)
				frame: (1.0 @ 0.352 corner: 1.3 @ 0.669);
				yourself);												
			yourself);
		yourself.
	self windowMorph: (aBuilder build: window).
	^ self windowMorph