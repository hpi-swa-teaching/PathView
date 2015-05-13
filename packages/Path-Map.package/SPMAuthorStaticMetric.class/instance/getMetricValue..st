accessing
getMetricValue: aCompiledMethod
	^ self metric
		ifNil: ['Unknown']
		ifNotNil: [aCompiledMethod perform: self metric]