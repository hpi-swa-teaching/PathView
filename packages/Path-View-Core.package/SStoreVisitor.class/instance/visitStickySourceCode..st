visiting
visitStickySourceCode: aMorph

	self add: {aMorph partner methodName. aMorph partner klass isMeta. aMorph bounds}
		to: self class sourceCodeStore.