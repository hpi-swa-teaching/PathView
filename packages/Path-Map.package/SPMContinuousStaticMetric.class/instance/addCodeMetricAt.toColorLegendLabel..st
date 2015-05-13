visualization
addCodeMetricAt: aPosition toColorLegendLabel: aStream
	aStream nextPut: Character cr.
	self maxValue
		ifNil: [aStream nextPutAll: 'Unknown']
		ifNotNil: [
			aStream nextPutAll: (
			self thresholdSelected
				ifTrue: [self thresholdLabelFor: aPosition]
				ifFalse: [self class isLogarithmic
							ifTrue: [self logarithmicLabelFor: aPosition]
							ifFalse: [self linearLabelFor: aPosition]])].
	aStream nextPutAll: ' ', self metricName, '.'.