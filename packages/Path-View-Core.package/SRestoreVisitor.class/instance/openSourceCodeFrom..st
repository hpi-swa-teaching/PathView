restoring
openSourceCodeFrom: aMorph

	self sourceCodeStore copy
		detect: [:spec |
			spec first = aMorph methodName and: [spec second = aMorph klass isMeta]]
		ifFound: [:spec |
			aMorph openMethodMorph
				openInWorld: (aMorph classMorph pasteUpMorphOrWorld);
				bounds: spec third.
			self sourceCodeStore remove: spec]
		ifNone: [].