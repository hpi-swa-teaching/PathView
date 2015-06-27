monticello conversion
convertToTypes
	| typeBucket map |
	typeBucket := self class new.
	map := typeBucket instVarNamed: 'arguments'.
	self arguments keysAndValuesDo: [:key :value | 
		[map at: (self associationToMethod: key) put: (self symbolsToTypes: value)]
			on: Exception do: ["take next element"]].
	map := typeBucket instVarNamed: 'returns'.
	self returns keysAndValuesDo: [:key :value | 
		[map at: (self associationToMethod: key) put: (self symbolToType: value)]
			on: Exception do: ["take next element"]].
	map := typeBucket instVarNamed: 'members'.
	self members keysAndValuesDo: [:key :value | 
		[map at: (self symbolToType: key) put: (self symbolsToTypes: value)]
			on: Exception do: ["take next element"]].
	^ typeBucket