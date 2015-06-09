accessing
variableAccess

	^ variableAccess ifNil: [
		variableAccess := Dictionary newFrom: {
			#class -> #classVarNames.
			#instance -> #instVarNames.
			#pool -> #poolDictionaryNames } ]