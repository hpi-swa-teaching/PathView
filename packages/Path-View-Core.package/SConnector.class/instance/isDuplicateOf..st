updating
isDuplicateOf: connector
	"These criteria are duplicated on the class side in existingConnectorFrom:to:.
	Do not see a possibility to merge this."
	
	^ connector class = self class & 
		(self sourceMorph == connector sourceMorph) & 
		(self targetMorph == connector targetMorph)