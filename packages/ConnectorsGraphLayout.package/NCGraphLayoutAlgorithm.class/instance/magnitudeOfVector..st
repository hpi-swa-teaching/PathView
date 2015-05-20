layout
magnitudeOfVector: vector
	| mag |
	mag := vector inject: 0.0 into: [ :sum :pt | sum + (pt x * pt x) + (pt y * pt y) ].
	^mag sqrt