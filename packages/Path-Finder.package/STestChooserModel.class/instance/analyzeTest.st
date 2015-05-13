private
analyzeTest

	| result |
	result := self test isString
		ifTrue: [self tracer traceSourceCode: self test]
		ifFalse: [self tracer traceTest: self test actualClass method: self test methodSymbol].
	self result: result.