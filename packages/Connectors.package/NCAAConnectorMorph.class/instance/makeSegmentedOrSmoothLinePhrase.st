menus
makeSegmentedOrSmoothLinePhrase
	^ line isCurve
		ifTrue: ['make segmented line' translated]
		ifFalse: ['make smooth line' translated]