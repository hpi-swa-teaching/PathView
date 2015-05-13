color propagation
forColors: aCollectionOfColors
	| maxHue maxSaturation maxBrightness |
	aCollectionOfColors ifEmpty: [^ nil].
	(aCollectionOfColors allSatisfy: [:each | each = Color white]) ifTrue: [^ Color white].
	maxHue := 1000.
	maxSaturation := 0.0.
	maxBrightness := 0.0.
	aCollectionOfColors do: [:each | 
		(each = Color white) not
			ifTrue: [	each isGray
						ifFalse: [maxHue := maxHue min: each hue].
					maxSaturation := maxSaturation max: each saturation.
					maxBrightness := maxBrightness max: each brightness]].
	^ (Color h: maxHue s: maxSaturation v: maxBrightness)