instance creation
onList: aClassArray
	
	| withCommonSuperclass |
	withCommonSuperclass := { self commonSuperclassOf: aClassArray }
									addAll: aClassArray;
									yourself.
	^ self on: (SMultipleChoiceRequest
				prompt: 'Choose class'
				labels: (withCommonSuperclass collect: [:c | c name asString])
				values: withCommonSuperclass
				lines: #(1))