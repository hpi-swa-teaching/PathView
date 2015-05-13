building
createLabelMorph: aString

	super createLabelMorph: aString.
	self extentMorphToLargestString: aString.