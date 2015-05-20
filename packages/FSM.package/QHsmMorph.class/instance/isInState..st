accessing
isInState: aStateName
	self eventHandler ifNotNilDo: [ :eh | ^eh isIn: aStateName ].
	^false