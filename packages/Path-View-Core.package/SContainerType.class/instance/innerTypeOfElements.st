accessing
innerTypeOfElements
	"Return the inner-most typeOfElements, even if this is a container-type with multiple nested collections."
	
	| currentType |
	currentType := self.
	[ currentType isBehavior or: [currentType isNil] ]
		whileFalse: [ currentType := currentType typeOfElements ].
	^ currentType