reengeneering
wantsReengineeringInto: newClassMorph
	"Subclasses, that implement reengineering over drag/drop, must return, whether the
	target class-morph is a valid refactoring-target.
	If false is returned, dropping them into newClassMorph will be prevented and the morph will not be highlighted."
	
	^ false