inconsistencies
exclamationMark: aString for: aMorph
	| randomOffset |
	randomOffset := [((-200 to: -100), (150 to: 250)) atRandom].
	^ (SExclamationMark withText: aString from: aMorph)
		topLeft: aMorph topLeft + (randomOffset value@randomOffset value)