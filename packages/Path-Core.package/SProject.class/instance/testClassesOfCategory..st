classes
testClassesOfCategory: aCategory

	^ self testClasses select: [:each | each category = aCategory]