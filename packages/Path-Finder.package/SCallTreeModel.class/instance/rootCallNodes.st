spec commands
rootCallNodes

	self rootNode ifNil: [^ ''].
	^ {self rootNode}