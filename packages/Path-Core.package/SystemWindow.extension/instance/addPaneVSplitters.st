*Path-Core-override
addPaneVSplitters
	"reject flap morphs, too"
	| remaining targetX sameX |
	remaining := paneMorphs copy reject: [:each | each layoutFrame rightFraction = 1 
													or: [each isKindOf: SPluggableFlapMorph]].
	[remaining notEmpty] whileTrue:
		[targetX := remaining first layoutFrame rightFraction.
		sameX := paneMorphs select: [:each | each layoutFrame rightFraction = targetX].
		self addPaneVSplitterBetween: remaining first and: sameX.
		remaining := remaining copyWithoutAll: sameX]