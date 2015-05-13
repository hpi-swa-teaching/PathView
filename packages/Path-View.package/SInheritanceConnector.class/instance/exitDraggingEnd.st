reengineering
exitDraggingEnd
	
	| newSuperclassMorph |
	newSuperclassMorph := self hoveredClassMorph.
	newSuperclassMorph :=
		(self superclassRefactoringAllowed: newSuperclassMorph)
			ifFalse: [ targetMorph ]
			ifTrue: [ self refactorSuperclassTo: newSuperclassMorph rollbackTo: targetMorph ].
	
	"The refactoring will happen asynchronously. Meanwhile, keep the arrow attached to the new selected super-class."
	newSuperclassMorph
		ifNil: [ self abandon ]
		ifNotNil: [ self attachToNewTarget: newSuperclassMorph ].
	super exitDraggingEnd.