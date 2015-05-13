path view
getSuspiciousnessMapping
	"Return dictionary mapping from CallNode instances to 2-element-arrays with the suspiciousness-color and the regular suspiciousness-value."
	
	| dict addedCompiledMethods |
	addedCompiledMethods := Set new.
	dict := Dictionary new.
	self
		traverseCallTree: self rootNode
		with: [ :node |
			(addedCompiledMethods includes: node compiledMethod)
				ifFalse: [
					addedCompiledMethods add: node compiledMethod.
					(self getSuspiciousnessAndConfidenceFor: node)
						ifNotNilDo: [ :suspiciousMethod |
							dict at: node put: { self getColor: suspiciousMethod. suspiciousMethod value } ] ] ].
	^ dict