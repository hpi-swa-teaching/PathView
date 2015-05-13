updating
update: aCallNode

	(aCallNode notNil and: [aCallNode isLiteral]) ifTrue: [^ self].
	aCallNode ifNil:[^ self setClass: nil andSelector: nil]. 
	self setClass: aCallNode clientClass andSelector: aCallNode clientSelector.	
