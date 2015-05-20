geometry testing
visibleBounds
	"Answer my visible bounds for the purposes of label motion and 
	containsPoint: "
	^ (label notNil
			and: [super color isTransparent
					and: [super borderWidth == 0
							and: [super borderColor isTransparent]]])
		ifTrue: [label bounds]
		ifFalse: [self bounds]
