instance creation
existingConnectorFrom: source to: target
	
	^ self existingConnectorFrom: source to: target satisfying: [ :connector | true ]