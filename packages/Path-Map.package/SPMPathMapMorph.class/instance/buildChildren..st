building
buildChildren: aBoolean
	| sufficientSpace |
	self createChildren: aBoolean.
	sufficientSpace := self arrangeChildren.
	sufficientSpace ifFalse: [self childrenMorphs valuesDo: [:each | self removeMorph: each]].
	self childrenMorphs valuesDo: [:each | each buildChildren: sufficientSpace].