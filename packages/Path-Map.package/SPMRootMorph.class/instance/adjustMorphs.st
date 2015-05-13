building
adjustMorphs
	"Similar code as superclass, just for displaying progress"
	| remainingDimension |
	remainingDimension := self computeRemainingDimension.
	self children reverse do: [:each | 
		remainingDimension := self adjustMorph: each to: remainingDimension]
	displayingProgress: 'Adjust tree map'.