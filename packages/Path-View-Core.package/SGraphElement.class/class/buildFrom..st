instance creation
buildFrom: anObject
	
	(anObject isKindOf: SGraphElement) ifTrue: [ ^ anObject ].
	^ ((self allSubclasses
		reject: #isAbstract)
		detect: [ :class | 
			class wrapsInstancesOf: anObject class ]
		ifNone: [ self error: 'Cannot insert object into graph: ', anObject ])
			createFrom: anObject