instance creation
openFor: sourceMorph connectedTo: targetMorph variableName: aString variableType: aSymbol
	
	^ (self existingConnectorFrom: sourceMorph to: targetMorph variableName: aString)
		ifNil: [
			(self privateCreateFor: sourceMorph to: targetMorph)
				variableName: aString;
				variableType: aSymbol;
				addRoleLabel ]