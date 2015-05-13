explore actions
addObjectExplorationMorph: aMorph

	(self objectExplorationMorphsStack includes: aMorph) 
		ifTrue: [self objectExplorationMorphsStack remove: aMorph].
	self objectExplorationMorphsStack addFirst: aMorph.
	self 
		addMorph: aMorph;
		adjustObjectExplorationMorphs.