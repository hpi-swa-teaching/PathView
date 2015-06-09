testing
testEmptyBoundingBox

	self assert: [ instance classMorphs size = 0 ].
	self assert: [ instance boundingBoxOfClassMorphs = (0@0 corner: 0@0) ].