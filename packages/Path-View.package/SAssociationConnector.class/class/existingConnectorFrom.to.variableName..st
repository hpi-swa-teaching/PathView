instance creation
existingConnectorFrom: source to: target variableName: aString
	
	^ super
		existingConnectorFrom: source
		to: target
		satisfying: [ :connector | connector variableName = aString ]