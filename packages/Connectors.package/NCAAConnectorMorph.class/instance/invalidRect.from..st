change reporting
invalidRect: aRectangle from: aMorph
	super invalidRect: (aMorph = line
		ifTrue: [ self expandFullBoundsForDragShadow: aRectangle ]
		ifFalse: [ aRectangle ]) from: aMorph