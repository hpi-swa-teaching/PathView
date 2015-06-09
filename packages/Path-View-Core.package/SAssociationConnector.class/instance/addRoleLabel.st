updating
addRoleLabel
	
	| targetClass |
	targetClass :=
		(SClassMorph memberTypeFor: self variableName in: sourceMorph visualizedClass)
			ifNil: [ self targetMorph visualizedClass ].
	(self labelClass
		openOn: self
		targetingClass: targetClass)
		initializeString: (self roleLabelString: targetClass).