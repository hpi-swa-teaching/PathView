reengineering
superclassRefactoringAllowed: newSuperclassMorph
	
	^ newSuperclassMorph notNil
		and: [ newSuperclassMorph ~~ targetMorph ]
		and: [ newSuperclassMorph klass ~= targetMorph klass ]