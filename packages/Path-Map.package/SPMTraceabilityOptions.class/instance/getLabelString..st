visualization
getLabelString: aPosition
	| maxConcerns stepWidth count |
	self selectedConcerns ifNil: [^ 'No concerns available. See  PathProjects.'].
	maxConcerns := self getSelectedConcerns size.
	(maxConcerns <= 1 or: [self specificConcernMethodsOnly])
		ifTrue: [^ 'No selected concern covered this method.'].
	aPosition x <= 0.25
		ifTrue: [^ 'No selected concern covered this method.'].
	stepWidth := 0.75 / (maxConcerns - 1).
	count := (((aPosition x - 0.25) / stepWidth) ceiling) + 1.
	^ count asString, ' concerns covered this method'