geometry eToy
scale: scaleFactor
	super scale: scaleFactor.
	line scaleFactor: scaleFactor.
	constraints first center: line vertices first.
	constraints last center: line vertices last.
