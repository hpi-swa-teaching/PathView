building
arrangeTarget
	self addAndArrangeChildrenOf: self.
	self childrenMorphs valuesDo: [:each | each parentMorph: self]