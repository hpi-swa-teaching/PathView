testing
testBoundingBox

	| classMorph |
	classMorph := self addClass: testClass.

	self assert: [ instance boundingBoxOfClassMorphs = classMorph bounds ]