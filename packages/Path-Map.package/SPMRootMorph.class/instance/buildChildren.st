building
buildChildren
	| lastTestCategoryMorph left |
	super buildChildren.
	self project includesTests
		ifTrue: [lastTestCategoryMorph := self childrenMorphs 
					at: self project categoriesWithTests asSortedCollection last 
					ifAbsent: [^ self].
	left := lastTestCategoryMorph position x + lastTestCategoryMorph width - 1.
	self lineMorph: (LineMorph 
					from: left@(self position y)
					to: left@(self position y + self height - 2)
					color: Color black 
					width: 3).
	self addMorph: self lineMorph].