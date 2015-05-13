spec commands
hasChildren: aNode

	aNode ifNil: [^ false].
	^ aNode nextCalls notEmpty