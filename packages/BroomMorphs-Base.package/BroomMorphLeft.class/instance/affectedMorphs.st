private
affectedMorphs
	"Answer all the morphs that I should be moving"
	| movedRect |
	movedRect := self bounds encompass: lastHotspot x @ hotspot y.
	^ owner submorphs
		select: [:m | movedRect
				intersects: (Rectangle
						left: m bounds right - 1
						right: m bounds right
						top: m bounds top
						bottom: m bounds bottom)]