accessing-morphs
getCategoryMorph: aCategory
	^ self rootMorph childrenMorphs at: aCategory
