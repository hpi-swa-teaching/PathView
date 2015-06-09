reengineering
processReengineeringInto: newClassMorph
	
	self
		reengineerWith: newClassMorph
		ifSuperclass: [ ^ self pullUpMethodCategory ]
		ifSubclass: [ ^ self pushDownMethodCategory ].