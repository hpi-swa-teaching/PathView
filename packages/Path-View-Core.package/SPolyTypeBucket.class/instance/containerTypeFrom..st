collecting types
containerTypeFrom: aContainer
	| container |
	container := SContainerType forPoly: aContainer class.
	aContainer isVariableBinding
		ifTrue: [ "Association"
			container typeOfKeys add: (self getTypeFromObject: aContainer key).			
			container typeOfElements add: (self getTypeFromObject: aContainer value).
			^ container].
	aContainer ifNotEmpty:[
		aContainer do: [:each | container typeOfElements 
									add: (self getTypeFromObject: each)].
		aContainer isDictionary 
			ifTrue: [aContainer keys do: [:each | container typeOfKeys 
													add: (self getTypeFromObject: each)]]].
	^ container
