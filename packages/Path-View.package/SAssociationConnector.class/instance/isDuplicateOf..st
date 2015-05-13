updating
isDuplicateOf: connector
	"These criteria are duplicated on the class-side, in
	existingConnectorFrom: to: variableName: . Don't see a way to merge these two versions."
	
	^ (super isDuplicateOf: connector) and: [ self variableName = connector variableName ]