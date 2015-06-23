testing
testBoundingBoxForMultipleClasses

	| boundingBox classes |
	classes := OrderedCollection newFrom: { testClass.  associatedTestClass. }.
	instance openClassMorphs: classes at: 0@0.
	boundingBox := instance classMorphs first bounds merge: instance classMorphs second bounds.

	self assert: [ instance boundingBoxOfClassMorphs = boundingBox ]