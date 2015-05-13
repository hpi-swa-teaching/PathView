contracts
printContractFor: anArgumentName with: aBuilder
	| type |
	type := DateAndTime.
	(self minDate notNil and: [self maxDate notNil])
		ifTrue: [self printRangeFrom: self minDate to: self maxDate 
					for: anArgumentName ofType: type with: aBuilder].	
	self timeZones 
		ifNotEmpty: [self printIncludes: self timeZones asArray
						for: anArgumentName 
						property: '#timeZoneName'
						ofType: type with: aBuilder].
	self dayOfWeekNames 
		ifNotEmpty: [self printIncludes: self dayOfWeekNames asArray
						for: anArgumentName 
						property: '#dayOfWeekName'
						ofType: type with: aBuilder].
	self isLeapYear
		ifFalse: [self printIsNot: '#isLeapYear' 
					for: anArgumentName ofType: type with: aBuilder].					