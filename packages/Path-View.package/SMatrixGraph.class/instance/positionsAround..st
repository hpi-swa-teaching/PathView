layout - assigning
positionsAround: position
	"Yes I love smalltalk"
	
	^ {
		-1@ -1.   0@ -1.  1@ -1.
		-1@0.   "center"  1@0.
		-1@1.     0@1.    1@1.
	} collect: [ :offset | position + offset ]