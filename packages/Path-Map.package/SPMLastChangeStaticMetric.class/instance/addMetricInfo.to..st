visualization
addMetricInfo: aNumber to: aMorph
	| dateTime |
	dateTime := DateAndTime fromSeconds: aNumber.
	aMorph addToAdditionalInfo: self metricName, ': ', 
		dateTime asDate asString, ' ', 
		dateTime asTime asString, '.'.