building
arrangeChildrenMorphs: aNumber and: remainingDimension
	| morph position |
	position := self positionDimension.
	self children do: [:each |
		morph := self arrangeChildrenMorph: each 
					at: position maxWeight: aNumber and: remainingDimension.
		position := position + (self getChildDimension: morph)].