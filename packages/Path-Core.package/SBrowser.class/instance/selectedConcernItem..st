concerns
selectedConcernItem: anObject
	| tests group label |
	anObject ifNil: [^ self].
	group := self cacheConcerns includesKey: anObject.
	tests := group
				ifTrue: [self testsForConcerns: (self concernGroups at: anObject)]
				ifFalse: [self testsForConcerns: {anObject}].
	label := 'Methods of ', anObject asString, ' concern'.
	group ifTrue: [label := label, ' group'].
	SystemNavigation default
		browseMessageList: (self methodsCoveredBy: tests) asSortedCollection
		name: label
