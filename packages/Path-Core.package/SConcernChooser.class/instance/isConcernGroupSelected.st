concern button
isConcernGroupSelected
	^ self selectedConcernItem notNil and: [self selectedConcernItem size = 1]