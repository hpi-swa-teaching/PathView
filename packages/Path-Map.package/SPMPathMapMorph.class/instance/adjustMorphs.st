building
adjustMorphs
	| remainingDimension |
	remainingDimension := self computeRemainingDimension.
	self children reverse do: [:each | 
		remainingDimension := self adjustMorph: each to: remainingDimension].
			