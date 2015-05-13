building
arrangeChildren
	"Set extent and position of morphs"
	"Arranging morphs in a matrix instead of a list (better space usage)"
	| children maxPossibleChildrenInList |
	children := self children.
	maxPossibleChildrenInList := (self dimension / self class minimumSize) floor.
	maxPossibleChildrenInList = 0 
		ifTrue: [self availableSize: maxPossibleChildrenInList isNotSufficientFor: children. 
				^ false].
	children size > maxPossibleChildrenInList
		ifTrue: [^ self arrangeChildrenInMatrix: children]
		ifFalse: [^ super arrangeChildren].