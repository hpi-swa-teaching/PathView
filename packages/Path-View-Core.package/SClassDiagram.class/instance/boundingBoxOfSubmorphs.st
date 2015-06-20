geometry
boundingBoxOfSubmorphs
	"calculate the bounding box of all morphs in the view - also notes"

	| emptyRectangle |
	(self submorphs notEmpty) ifTrue: 
		[emptyRectangle := (self submorphs at: 1) bounds.
		^ self submorphs  
			inject: emptyRectangle 
			into: [ :rectangle :each |
				rectangle quickMerge: each fullBounds ]].
	^ 0@0 corner: 0@0
