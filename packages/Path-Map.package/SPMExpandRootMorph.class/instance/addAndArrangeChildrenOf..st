building
addAndArrangeChildrenOf: aMorph
	aMorph children do: [:each | aMorph addMorph: (aMorph childrenMorphs at: each)].
	aMorph arrangeChildren.
	aMorph childrenMorphs valuesDo: [:each | self addAndArrangeChildrenOf: each].