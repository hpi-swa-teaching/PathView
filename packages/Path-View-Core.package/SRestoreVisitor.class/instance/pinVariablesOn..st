restoring
pinVariablesOn: aMorph

	self pinnedVariablesStore copy
		detect: [:spec |
			spec first = aMorph variableName and: [spec second = aMorph type]]
		ifFound: [:spec | aMorph pin. self pinnedVariablesStore remove: spec]
		ifNone: [].