color button
setIconColorOfSelectedConcern: aColor
	self selectedConcernItem ifNil: [^ self].
	self concernColors at: self selectedConcern put: aColor.
	self 
		refreshDeselectedConcernTree;
		changed: #rootsTestClasses.