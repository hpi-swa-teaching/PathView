menu actions
getClassFromTypeHarvest
	
	^ (self class memberTypeFor: self variableName in: self klass)
		ifNotNilDo: [:class |
			(class = SContainerType) ifTrue: [
				class typeOfContainer isDictionary ifTrue: [
					class typeOfKeys ifNil: [
						class perform: #typeOfKeys: with: (self userSelectedContainerClass: 'key-type')]].
				class typeOfElements ifNil: [
					class perform: #typeOfElements: with: (self userSelectedContainerClass: 'value-type')]].
			class]