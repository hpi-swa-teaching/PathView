building
arrangeChildrenMorph: aChildren at: aPosition maxWeight: aNumber and: remainingDimension
	| morph |
	morph := self childrenMorphs at: aChildren.
	self setChild: morph dimension: (self class minimumSize + 
								((morph weight / aNumber) * remainingDimension) floor).
	self setChild: morph oppositeDimension: self oppositeDimension.		
	self setChild: morph position: aPosition.
	^ morph