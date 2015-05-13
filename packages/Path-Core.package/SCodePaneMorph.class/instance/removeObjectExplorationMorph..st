explore actions
removeObjectExplorationMorph: aMorph

	self objectExplorationMorphsStack remove: aMorph.
	self 
		removeMorph: aMorph;
		adjustObjectExplorationMorphs.