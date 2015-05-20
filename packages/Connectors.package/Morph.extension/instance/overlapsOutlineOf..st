*connectors-geometry
overlapsOutlineOf: aMorph 
	"Answer true if aMorph's shadow and my shadow overlap at all"
	^self overlapsShadowForm: aMorph shadowForm bounds: aMorph fullBounds.