building
adjustMorphsInDimension: aCollection
	| requiredDimension remainingDimension pos |
	requiredDimension := aCollection inject: 0 into: [:sum : each | 
								sum := sum + (self getChildDimension: each)].
	remainingDimension := self dimension - requiredDimension.
	[remainingDimension > 0] whileTrue: [
		"Scale and set position of all childs + 1"
		aCollection reverseDo: [:each | 
			remainingDimension = 0 ifTrue: [^ self].
			remainingDimension := remainingDimension - 1.
			self setChild: each 
				position: each positionOppositeDimension + remainingDimension 
				oppositePosition: each positionDimension.
			self setChild: each dimension: (self getChildDimension: each) + 1].
	
		"push all childs to top of dimension"
		remainingDimension = 0 ifTrue: [^ self].
		pos := self positionDimension.
		aCollection do: [:each | 
			self setChild: each 
				position: pos 
				oppositePosition: each positionDimension..
			pos := pos + each oppositeDimension]].