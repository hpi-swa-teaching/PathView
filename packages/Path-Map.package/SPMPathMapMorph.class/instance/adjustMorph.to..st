building
adjustMorph: aChildren to: aDimension
	| morph remainingDimension |
	aDimension = 0 ifTrue: [^ aDimension].
	remainingDimension := aDimension. 
	remainingDimension := remainingDimension - 1.
	morph := self childrenMorphs at: aChildren.
	self 
		setChild: morph 
		position: morph positionOppositeDimension + remainingDimension.
	self 
		setChild: morph 
		dimension: (self getChildDimension: morph) + 1.
	^ remainingDimension
			