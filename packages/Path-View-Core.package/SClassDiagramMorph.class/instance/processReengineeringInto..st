reengeneering
processReengineeringInto: newClassMorph
	"This is called from a SClassMorph, when the receiver has been dropped into it.
	Check the reengineering-conditions and perform the reengineering, if appropriate.
	Must only be implemented by class-diagram-elements, that actually can perform a reengineering by being dragged."
	
	self subclassResponsibility.
	"self shouldNotImplement." "If this method is not overridden, that means it is inappropriate..."