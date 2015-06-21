geometry
boundingBoxOfSubmorphs
	"calculate the bounding box of all morphs in the view including notes"

	| emptyRectangle |
	emptyRectangle := 0@0 corner: 0@0.

	^ self submorphs  
		inject: emptyRectangle 
		into: [ :rectangle :each | rectangle quickMerge: each fullBounds ]
	