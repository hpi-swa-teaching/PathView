visualization
testCoverageIntensityFrom: aMorph
	| numberOfCoveringTests |
	numberOfCoveringTests := aMorph allCoveringTests size.
	self addIntensityCoveringInfo: numberOfCoveringTests to: aMorph.
	^ (numberOfCoveringTests ln / self numberOfTests ln) * self class minGrayValue