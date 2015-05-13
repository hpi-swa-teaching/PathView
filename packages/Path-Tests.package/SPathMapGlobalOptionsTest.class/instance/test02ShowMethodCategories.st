testing
test02ShowMethodCategories
	| morph |
	morph := self classMorph: SSBClassA.
	self 
		assert: morph childrenMorphs size = 1;
		assert: (morph childrenMorphs at: #'no category') class = SPMAllMethodCategoriesMorph.
	self options switchShowMethodCategories.
	morph := self classMorph: SSBClassA.
	self 
		assert: morph childrenMorphs size = 3;
		assert: (morph childrenMorphs at: #accessing) class = SPMMethodCategoryMorph.