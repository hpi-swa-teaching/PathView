user class selection
userSelectedContainerClass: aMessage
	
	^ self. 
	"TODO: refactor to use this without TypeHarvester"
	"(self userSelectedClass: aMessage) ifNotNilDo: [ :type |
		((type isKindOf: LookupKey class) or: [ type isKindOf: Dictionary class ])
			ifTrue: [ | container |
				""key-value-class""
				container := SContainerType new typeOfContainer: type.
				container typeOfKeys: ((self userSelectedContainerClass: 'key-type') ifNil: [ ^ nil ]).
				container typeOfElements: ((self userSelectedContainerClass: 'value-type') ifNil: [ ^ nil ]).
				container ]
		ifFalse: [
			(type isKindOf: Collection class)
				ifTrue: [ | container | 
					""collection-class""
					container  := SContainerType new typeOfContainer: type.
					container typeOfElements: ((self userSelectedContainerClass: 'element-type') ifNil: [ ^ nil ]).
					container ]
				ifFalse: [ ""normal class"" type ] ] ]"