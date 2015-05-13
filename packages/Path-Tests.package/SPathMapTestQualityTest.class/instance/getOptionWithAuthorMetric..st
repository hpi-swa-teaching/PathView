helper
getOptionWithAuthorMetric: aSymbol
	[self options staticMetricAuthors] 
		on: ProvideAnswerNotification 
		do: [:notification | notification resume: #ignoreMenu].
	self options staticCodeMetric metric: #authorFirstChange.
	self options redrawPathMapIfPossible ifFalse: [self options visualizeStaticMetric].
	^ self options
