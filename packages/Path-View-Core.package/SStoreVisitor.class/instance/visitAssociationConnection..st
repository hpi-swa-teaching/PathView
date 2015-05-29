visiting
visitAssociationConnection: aConnection

	self add: {aConnection variableName. aConnection variableType.
				aConnection targetMorph klass name}
		 to: self class associationsStore.