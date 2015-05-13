accessing
getSuspiciousnessAndConfidenceFor: aCallNode
	| methodRef |
	methodRef := MethodReference 
					class: aCallNode clientClass selector: aCallNode clientSelector.
	^ self suspiciousMethods 
		detect: [:each | each key = methodRef] 
		ifNone: [nil].