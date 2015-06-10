menu actions
getClassFromTypeHarvestOrAskFor
	^ self getClassFromTypeHarvest 
		ifNil: [self askForClass]
		ifNotNilDo: [:class |
			(class name = #SContainerType) ifTrue: [
				class typeOfContainer isDictionary ifTrue: [
					class typeOfKeys ifNil: [
						class perform: #typeOfKeys: with: (self userSelectedContainerClass: 'key-type')]].
				class typeOfElements ifNil: [
					class perform: #typeOfElements: with: (self userSelectedContainerClass: 'value-type')]].
			class]