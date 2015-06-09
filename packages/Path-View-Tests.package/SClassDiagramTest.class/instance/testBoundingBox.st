testing
testBoundingBox

	| classMorph |
	classMorph := self addClass.
	self assert: [ instance classMorphs size = 1 ].
	self assert: [ instance boundingBoxOfClassMorphs = classMorph bounds ].