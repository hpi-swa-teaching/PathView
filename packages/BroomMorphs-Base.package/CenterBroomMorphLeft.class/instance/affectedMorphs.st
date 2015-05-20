private
affectedMorphs
	"Answer all the morphs that I should be moving"
	| movedRect |
	movedRect := self bounds encompass: lastHotspot x @ hotspot y.
	^ owner submorphs
		select: [:m | movedRect
				intersects: (Rectangle
						left: m bounds center x - 1
						right: m bounds center x + 1
						top: m bounds top
						bottom: m bounds bottom)]