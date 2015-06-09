layout
extendParentMorphArea
	"Calculate, how big the graph currently is, extend the size by the configured percentage (areaExtension), 
	and make the parent-morph at least that big. Do not make it smaller."
	
	areaExtension ifNotNil: [ | newExtent |
		newExtent := self bounds extent * (1 + areaExtension) asPoint.
		"Only make the parent-morph bigger, never smaller."
		(0 asPoint corner: newExtent) area <= self parentMorph bounds area
			ifFalse: [
				self parentMorph extent: newExtent ] ].