building
arrangeChildrenMorphs: aNumber and: remainingDimension
	"Similar code as superclass, just for displaying progress"
	| morph position |
	position := self positionDimension.
	self children do: [:each |
		morph := self arrangeChildrenMorph: each 
					at: position maxWeight: aNumber and: remainingDimension.
		position := position + (self getChildDimension: morph)]
	displayingProgress: 'Arrange tree map'.