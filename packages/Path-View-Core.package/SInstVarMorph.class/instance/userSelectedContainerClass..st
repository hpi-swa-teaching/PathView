user class selection
userSelectedContainerClass: aMessage

	^ (self userSelectedClass: aMessage) ifNotNilDo: [ :type |
		((type isKindOf: LookupKey class) or: [ type isKindOf: Dictionary class ])
			ifTrue: [ self createKeyValueContainer ]
			ifFalse: [
				(type isKindOf: Collection class)
					ifTrue: [ self createCollectionContainer ]
					ifFalse: [ type ] ] ]