geometry
boundingBoxOfClassMorphs
	"calculate the bounding box of all class morph in the view"

	| emptyRectangle |
	emptyRectangle := 0@0 corner: 0@0.
	^ self classMorphs 
		inject: emptyRectangle 
		into: [ :rectangle :each |
			rectangle quickMerge: each fullBounds ]