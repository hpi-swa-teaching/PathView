concern button
isConcernSelected
	^ self selectedConcernItem notNil and: [self selectedConcernItem size = 2]