contracts
printContractFor: anArgumentName with: aBuilder
	| type |
	type := Stream.
	self isClosed
		ifFalse: [self printIsNot: '#closed' 
					for: anArgumentName ofType: type with: aBuilder].
	self contents 
		ifNotEmpty: [self printIncludes: self contents asArray
						for: anArgumentName 
						property: '#''contents class'''
						ofType: type with: aBuilder].
