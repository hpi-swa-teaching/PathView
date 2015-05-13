running
run
	self project hasConcernsDefined
		ifTrue: [super run]
		ifFalse: [self inform: 'Define a concern mapping in PathProjects first.']