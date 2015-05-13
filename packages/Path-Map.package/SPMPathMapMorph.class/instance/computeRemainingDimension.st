building
computeRemainingDimension
	| requiredDimension |
	requiredDimension := self childrenMorphs values 
						inject: 0 
						into: [:sum : each | sum := sum + (self getChildDimension: each)].
	^ self dimension - requiredDimension.