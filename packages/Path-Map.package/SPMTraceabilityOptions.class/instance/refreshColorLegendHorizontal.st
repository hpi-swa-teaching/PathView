visualization
refreshColorLegendHorizontal
	| colors maxConcerns stepWidth position minGray |
	self selectedConcerns 
		ifNil: [^ self colorLegend horizontalColors: self class whiteForColorLegend].
	maxConcerns := self getSelectedConcerns size.
	(maxConcerns <= 1 or: [self specificConcernMethodsOnly])
		ifTrue: [^ self colorLegend horizontalColors: self class whiteForColorLegend].
	colors := OrderedCollection new.
	colors add: 0.25 -> {Color white}.
	stepWidth := 0.75 / (maxConcerns - 1).
	position := 0.25.
	minGray := SPMTRCoverageTracer minGrayValue.
	2 to: maxConcerns do: [:index | 
		position := position + stepWidth.
		colors 
			add: position -> {Color h: 0 s: 0 v: (minGray - ((index / maxConcerns) * minGray))}].
	self colorLegend horizontalColors: colors.
		