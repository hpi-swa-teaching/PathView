color propagation
forColors: aCollectionOfColors
	| hue saturation brightness nonWhite |
	aCollectionOfColors ifEmpty: [^ nil].
	hue := saturation := brightness := nonWhite := 0.
	aCollectionOfColors do: [:each | 
		(each = Color white) not
			ifTrue: [	hue := hue + each hue.
					nonWhite := nonWhite + 1].
		saturation := saturation + each saturation.
		brightness := brightness + each brightness].
	nonWhite = 0 
		ifFalse: [hue := hue / nonWhite].
	saturation := saturation / aCollectionOfColors size.
	brightness := brightness / aCollectionOfColors size.
	^ Color h: hue s: saturation v: brightness