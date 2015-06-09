collecting types
containerTypeFrom: aContainer
	| container |
	container := SContainerType new. 
	container typeOfContainer: aContainer class.
	aContainer isVariableBinding
		ifTrue: [ "Association"
			container typeOfKeys: (self getTypeFromObject: aContainer key).			
			container typeOfElements: (self getTypeFromObject: aContainer value).
			^ container].
	aContainer ifNotEmpty:[
		aContainer do: [:each | container typeOfElements: 
					(self leastCommonSuperTypeOf: container typeOfElements 
										and: (self getTypeFromObject: each))].
		aContainer isDictionary 
			ifTrue: [aContainer keys do: [:each | container typeOfKeys: 
					(self leastCommonSuperTypeOf: container typeOfKeys 
										and: (self getTypeFromObject: each))]]].
	^ container
