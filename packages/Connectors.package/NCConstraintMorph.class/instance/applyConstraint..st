constraints
applyConstraint: aPoint
	self center ~= aPoint ifTrue: [
		self isFlexed
			ifTrue: [ owner center: (self point: aPoint in: self pasteUpMorphOrWorld) ]
			ifFalse: [ self center: aPoint ]
	].
	lastTargetBounds := nil.