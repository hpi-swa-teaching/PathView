reengineering
refactorSuperclassTo: newSuperclassMorph rollbackTo: originalSuperclassMorph
	"Prompt the user with the refactoring-details. After the details-windows is closed, check, whether the super-class
	has actually changed, and update the inheritance connector based on the new system-state."
	
	| oldSuperclass newSuperclass |
	newSuperclass := newSuperclassMorph visualizedClass.
	oldSuperclass := sourceMorph visualizedClass superclass.
	SRefactoring
		execute: (SChangeSuperclassRefactoring
			reparentClass: sourceMorph visualizedClass
			from: oldSuperclass
			to: newSuperclass)
		onClose: [ | realNewSuperclass |
			realNewSuperclass := sourceMorph visualizedClass superclass. "Check again now, after refactoring."
			(realNewSuperclass ~= oldSuperclass)
				ifFalse: [ ^ originalSuperclassMorph ]
				ifTrue: [ "The refactoring has been correctly accepted."
					^ newSuperclass = realNewSuperclass
						ifTrue: [ newSuperclassMorph ]
						ifFalse: [ "Find a completely new superclass-morph... Will return nil, if none found."
							self findMorphFor: realNewSuperclass ] ] ].