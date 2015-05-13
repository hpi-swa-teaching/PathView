instance creation
getLabelFrom: aCollection
	^ aCollection
		ifEmpty: ['No Menu Entry']
		ifNotEmpty: [aCollection first isCollection
						ifTrue: [aCollection first first]
						ifFalse: [aCollection first key]]