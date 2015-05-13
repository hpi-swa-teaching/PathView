printing
printInfosForNode: aCallNode
	| suspiciousMethod |
	suspiciousMethod := self getSuspiciousnessAndConfidenceFor: aCallNode.
	suspiciousMethod ifNil: [^ ''].
	^  '{', (suspiciousMethod value first * 100) asInteger asString, '%} '