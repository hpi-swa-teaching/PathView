monticello conversion
associationToMethod: anAssociationOrBlockDescriptor
	| blockDescriptor |
	anAssociationOrBlockDescriptor class == Association
		ifTrue: [^ ((self symbolToType: anAssociationOrBlockDescriptor key) >> 
					anAssociationOrBlockDescriptor value) methodReference]
		ifFalse: [
			blockDescriptor := anAssociationOrBlockDescriptor deepCopy.
			blockDescriptor embeddingMethod: 
				(self associationToMethod: blockDescriptor embeddingMethod) 
											compiledMethod.
			^ blockDescriptor].	