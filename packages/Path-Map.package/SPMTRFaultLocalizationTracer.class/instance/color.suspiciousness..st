visualization
color: aMorph suspiciousness: aNumber
	| hue visibility |
	hue := 120 * (1.0 - aNumber).
	visibility := (self allFailures = 0)
					ifTrue: [0.0]
					ifFalse: [self failuresAtMethod / self allFailures].
	(self options singlePointOfFault and: [(visibility = 1.0) not])
		ifTrue: [	aMorph propagateColor: Color white]
		ifFalse: [aMorph propagateColor: (Color h: hue s: visibility v: 1.0)].