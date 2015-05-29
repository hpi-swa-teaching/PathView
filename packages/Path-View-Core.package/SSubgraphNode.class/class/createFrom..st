instance creation
createFrom: anObject
	
	(anObject isKindOf: Collection) ifTrue: [ ^ self type: self defaultGraphType withElements: anObject ].
	(anObject isKindOf: SGraph) ifTrue: [ ^ self new graph: anObject; yourself ].
	^ nil