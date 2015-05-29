reengineering
processReengineeringInto: newClassMorph
	"For now, moving a method is only allowed to direct sub/super-classes, to map better
	to the available refactorings (PullUp/PushDown-Method).
	The MoveMethodRefactoring seems to have another purpose, than one would expect in this context."
	
	self
		reengineerWith: newClassMorph
		ifSuperclass: [ ^ self pullUpMethod ]
		ifSubclass: [ ^ self pushDownMethod ].