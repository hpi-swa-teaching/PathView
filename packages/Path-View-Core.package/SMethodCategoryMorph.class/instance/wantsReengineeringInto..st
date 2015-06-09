reengineering
wantsReengineeringInto: newClassMorph
	"Reengineering only valid for direct sub-/super-classes."
	
	^ self isDirectHierarchyNeighbor: newClassMorph