visiting
visitMethod: aMorph

	aMorph isPinned ifTrue: [
		self add: {aMorph methodName. aMorph klass isMeta}
			to: self class pinnedMethodsStore].