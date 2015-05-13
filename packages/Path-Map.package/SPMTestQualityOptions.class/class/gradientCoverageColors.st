constants
gradientCoverageColors
	^ {	0.25 -> {Color black alpha: 0.0}.
		1.0 -> {	Color black alpha: 1.0 - SPMTRCoverageTracer minGrayValue. 
				Color black alpha: 1.0}}