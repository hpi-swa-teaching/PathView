public api
ifNotActive: aBlock
	
	self isNotActive ifTrue: [^ aBlock value]