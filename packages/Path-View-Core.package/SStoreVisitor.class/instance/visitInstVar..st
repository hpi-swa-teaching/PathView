visiting
visitInstVar: aMorph

	aMorph isPinned ifTrue: [
		self add: {aMorph variableName. aMorph type}
			to: self class pinnedVariablesStore].