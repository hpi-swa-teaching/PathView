building
arrangeChildren
	"Set extent and position of morphs"
	| maxPossibleChildren remainingDimension maxWeight |
	maxPossibleChildren := (self dimension / self class minimumSize) floor.
	self children size > maxPossibleChildren
		ifTrue: [
			self availableSize: maxPossibleChildren isNotSufficientFor: self children.
			^ false].
	remainingDimension := self dimension - (self children size * self class minimumSize).
	maxWeight := self childrenMorphs 
							inject: 0 into: [:sum :each | sum := sum + each weight].
	maxWeight = 0 ifTrue: [^ true].
	self arrangeChildrenMorphs: maxWeight and: remainingDimension.
	self children ifNotEmpty: [self adjustMorphs].
	^ true		
