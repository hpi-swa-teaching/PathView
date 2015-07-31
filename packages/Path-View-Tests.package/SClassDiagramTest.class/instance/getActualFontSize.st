zooming-helpers
getActualFontSize

	| classMorph |
	classMorph := instance classMorphs first.
	^ classMorph nameMorph labelMorph font height.

	