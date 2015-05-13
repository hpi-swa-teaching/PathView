restoring
pinMethodsOn: aMorph

	self sourceCodeStore copy
		detect: [:spec |
			spec first = aMorph methodName and: [spec second = aMorph klass isMeta]]
		ifFound: [:spec | aMorph pin]
		ifNone: [].
	self pinnedMethodsStore copy
		detect: [:spec |
			spec first = aMorph methodName and: [spec second = aMorph klass isMeta]]
		ifFound: [:spec | aMorph pin. self pinnedMethodsStore remove: spec]
		ifNone: [].