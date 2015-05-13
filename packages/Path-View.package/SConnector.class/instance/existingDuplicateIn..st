updating
existingDuplicateIn: connectors
	
	^ connectors
		detect: [ :each | (each == self) not and: [ each isDuplicateOf: self ] ]
		ifNone: [ nil ]