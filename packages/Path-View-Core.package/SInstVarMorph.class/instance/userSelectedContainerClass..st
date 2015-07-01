user class selection
userSelectedContainerClass: aMessage

	^ (self userSelectedClass: aMessage) ifNotNilDo: [ :type |
		((type isKindOf: LookupKey class) or: [ type isKindOf: Dictionary class ])
			ifTrue: [ self createKeyValueContainer: type ]
			ifFalse: [
				(type isKindOf: Collection class)
					ifTrue: [ self createCollectionContainer: type ]
					ifFalse: [ type ] ] ]