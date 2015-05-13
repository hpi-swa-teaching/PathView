tracing
selectedClasses

	^ Smalltalk allClasses select: [:aClass | self selectedCategories includes: aClass category]