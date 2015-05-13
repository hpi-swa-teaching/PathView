updating
refreshMenuEntries: aCollection

	self menuEntries: aCollection.
	self extentMorphToLargestString: (self class getLabelFrom: aCollection).
	self createMenu.