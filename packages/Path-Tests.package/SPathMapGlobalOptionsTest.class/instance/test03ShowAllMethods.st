testing
test03ShowAllMethods
	| morph  |
	morph := self classMorph: SSBClassA.
	self assert: (morph childrenMorphs at: #'no category') childrenMorphs size = 11.
	self options switchShowAllMethods.
	morph := self classMorph: SSBClassA.
	self assert: (morph childrenMorphs at: #'no category') childrenMorphs size = 14.
