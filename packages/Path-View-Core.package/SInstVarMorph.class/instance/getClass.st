menu actions
getClass
	^ self getClassFromTypeHarvest 
		ifNil: [self askForClass].
            "TODO: Use TypeHarvester if available"
		"ifNotNilDo: [:class |
			(class isKindOf: SContainerType) ifTrue: [
				class typeOfContainer isDictionary ifTrue: [
					class typeOfKeys ifNil: [
						class typeOfKeys: (self userSelectedContainerClass: 'key-type')]].
				class typeOfElements ifNil: [
					class typeOfElements: (self userSelectedContainerClass: 'value-type')]].
			class]"