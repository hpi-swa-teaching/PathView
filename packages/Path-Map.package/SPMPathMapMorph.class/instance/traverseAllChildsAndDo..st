tree functions
traverseAllChildsAndDo: aBlock

	self childrenMorphs do: [:each | 
		aBlock value: each.
		each traverseAllChildsAndDo: aBlock].