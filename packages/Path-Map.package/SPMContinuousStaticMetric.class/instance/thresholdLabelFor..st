visualization
thresholdLabelFor: aPosition
	aPosition x < 0.25
		ifTrue: [^ '<= ', self class low asString].
	aPosition x < 0.5
		ifTrue: [^ self class low asString, '-', self class average asString].
	aPosition x < 0.75
		ifTrue: [^ self class average asString, '-', self class high asString].
	^ '> ', self class high asString.
