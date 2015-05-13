visualization
getLabelString: aPosition
	| label |
	label := WriteStream on: ''.
	self addCoverageInfoAt: aPosition toColorLegendLabel: label.
	self staticCodeMetric addCodeMetricAt: aPosition toColorLegendLabel: label.
	^ label contents