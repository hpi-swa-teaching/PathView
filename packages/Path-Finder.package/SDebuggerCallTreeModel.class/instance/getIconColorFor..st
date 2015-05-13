icons
getIconColorFor: aCallNode
	| suspiciousMethod |
	suspiciousMethod := self getSuspiciousnessAndConfidenceFor: aCallNode.
	suspiciousMethod ifNil: [^ nil].
	^ self getColor: suspiciousMethod.