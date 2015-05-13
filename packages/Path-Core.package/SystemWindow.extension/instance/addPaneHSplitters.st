*Path-Core-override
addPaneHSplitters
	"reject flap morphs, too"
	| remaining targetY sameY |
	remaining := paneMorphs copy reject: [:each | each layoutFrame bottomFraction = 1 
													or: [each isKindOf: SPluggableFlapMorph]].
	[remaining notEmpty] whileTrue:
		[targetY := remaining first layoutFrame bottomFraction.
		sameY := paneMorphs select: [:each | each layoutFrame bottomFraction = targetY].
		self addPaneHSplitterBetween: remaining first and: sameY.
		remaining := remaining copyWithoutAll: sameY]