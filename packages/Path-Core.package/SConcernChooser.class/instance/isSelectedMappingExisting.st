mapping button
isSelectedMappingExisting
	self isConcernSelected ifFalse: [^ false].
	(self concernMapping includesKey: self selectedConcern) ifFalse: [^ false].
	self isTestClassSelected
		ifTrue: [	^ ((self concernMapping at: self selectedConcern) 
				select: [:each | each actualClass == self selectedTestClass]) size = 
					self selectedTestClass inheritedTestSelectors size].
	self isTestSelectorSelected
		ifTrue: [^ self project concerns 
					mappingExisting: self selectedConcern and: self selectedTest].
	^ false