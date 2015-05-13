classes
classesOfCategory: aCategory

	^ self allClasses select: [:each | each category = aCategory]