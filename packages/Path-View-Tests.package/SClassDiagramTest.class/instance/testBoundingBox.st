testing
testBoundingBox

	| classMorph |
	classMorph := self addClass.

	self assert: [ instance boundingBoxOfClassMorphs = classMorph bounds ]