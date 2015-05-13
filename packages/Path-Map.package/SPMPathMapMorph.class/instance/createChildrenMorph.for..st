building
createChildrenMorph: aBoolean for: aChildren
	| morph | 
	morph := self childrenMorphClass 
				parent: self sourceCodeEntity: aChildren pathMap: self pathMap.
	aBoolean ifTrue: [self addMorph: morph].
	self childrenMorphs at: aChildren put: morph