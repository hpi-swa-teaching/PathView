accessing
container: aClass elements: elementTypes keys: keyTypes
	| container |
	container := SContainerType forPoly: aClass.
	elementTypes ifNotNil: [
		elementTypes do: [:each | container typeOfElements add: each]].
	keyTypes ifNotNil: [
		keyTypes do: [:each | container typeOfKeys add: each]].
	^ container