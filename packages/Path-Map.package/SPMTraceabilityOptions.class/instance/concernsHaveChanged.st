visualization
concernsHaveChanged
	"refresh drop down box"
	self changed: #newConcernGroups.
	self changed: #allConcerns.
	self concerns groups ifEmpty: [^ self].
	(self concerns groups at: self concernGroup ifAbsent: [nil]) 
		ifNotNil: [self redrawPathMapIfPossible].