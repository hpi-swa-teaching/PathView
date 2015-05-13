visiting
visitMethod: aMorph

	self
		pinMethodsOn: aMorph;
		openSourceCodeFrom: aMorph.
	self sourceCodeStore
		detect: [:spec |
			spec first = aMorph methodName and: [spec second = aMorph klass isMeta]]
		ifFound: [:spec |
			aMorph openMethodMorph
				openInWorld: (aMorph classMorph pasteUpMorphOrWorld);
				bounds: spec third.
			self sourceCodeStore remove: spec]
		ifNone: [].