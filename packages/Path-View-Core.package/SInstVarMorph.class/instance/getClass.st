menu actions
getClass
	"If type is not set try to get Type from Type-Harvester, this can be nil. If not set the result, so it gets displayed."

	^ self isTypeSet
		ifFalse: [ self getClassFromTypeHarvest
			ifNotNilDo: [ :type | 
				self setTypeAndUpdateLabel: type.
				type]]
		ifTrue: [self variableType ]