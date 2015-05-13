classes
allClasses

	^ classesCache ifNil: [classesCache := (Smalltalk allClasses select: [:each | 
										self categories includes: each category]) asArray].