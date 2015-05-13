visualization
addCodeMetricAt: aPosition toColorLegendLabel: aStream
	| index |	
	aStream nextPut: Character cr.
	aStream nextPutAll: 'Last change by '.
	self authors
		ifNil: [aStream nextPutAll: 'Unknown']	
		ifNotNil: [index := (aPosition x * self authors size) ceiling.
				index < 1 ifTrue: [index := 1].
				index > self authors size ifTrue: [index := self authors size].
				aStream nextPutAll: (self authors at: index)].
	aStream nextPutAll: '.'.