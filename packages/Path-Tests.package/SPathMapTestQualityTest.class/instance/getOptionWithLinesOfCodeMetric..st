helper
getOptionWithLinesOfCodeMetric: aBoolean
	[self options staticMetricLinesOfCode] 
		on: ProvideAnswerNotification 
		do: [:notification | notification resume: #ignoreMenu].
	self options staticCodeMetric thresholdSelected: aBoolean.
	self options redrawPathMapIfPossible ifFalse: [self options visualizeStaticMetric].
	^ self options
