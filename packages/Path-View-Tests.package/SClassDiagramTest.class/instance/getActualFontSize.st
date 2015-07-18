zooming-helpers
getActualFontSize

	| fontHeight classMorph |
	classMorph := instance classMorphs first.
	fontHeight := classMorph nameMorph labelMorph font height.
	^ TextStyle pixelsToPoints: fontHeight.

	