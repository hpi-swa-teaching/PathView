mapping button
mappingButtonEnabled

	^ self isConcernSelected and: [
		self isTestClassSelected or: [self isTestSelectorSelected]]