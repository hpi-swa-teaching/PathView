geometry
computeBounds
	| oldFullBounds oldBounds delta |
	vertices ifNil: [^self].
	oldFullBounds := (fullBounds ifNil: [bounds]) copy.
	contours := Array new: 4 withAll: #().
	self updateArrowContours.
	segments := self computeSegments.
	segments do: [:ea | ea roundTo: 0.001].
	arrowForms := nil.
	self computeContours.
	oldBounds := bounds.
	bounds := self curveBounds truncated.
	self arrowForms 
		do: [:af | bounds := bounds quickMerge: (af offset extent: af extent)].

	"since we are directly updating bounds,
	see if any ordinary submorphs exist and move them accordingly"
	submorphs isEmpty 
		ifFalse: 
			[(oldBounds notNil 
				and: [(delta := bounds origin - oldBounds origin) ~= (0 @ 0)]) 
					ifTrue: [self submorphsDo: [:each | each position: each position + delta]]].
	self invalidRect: oldFullBounds.
	self layoutChanged.
	self changed