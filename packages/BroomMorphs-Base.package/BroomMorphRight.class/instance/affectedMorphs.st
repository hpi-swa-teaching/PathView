private
affectedMorphs
	"Answer all the morphs that I should be moving"
	| movedRect |
	movedRect := self bounds encompass: lastHotspot x @ hotspot y.
	^ owner submorphs
		select: [:m | movedRect
				intersects: (Rectangle
						left: m bounds left
						right: m bounds left + 1
						top: m bounds top
						bottom: m bounds bottom)]