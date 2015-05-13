reengineering
processReengineeringInto: newClassMorph
	"Moving a variable is only allowed to the direct super-/subclass to map directly to the available Refactoring-classes."
	
	self
		reengineerWith: newClassMorph
		ifSuperclass: [ ^ self pullUpVariableDeclaration ]
		ifSubclass: [ ^ self pushDownVariableDeclaration ].