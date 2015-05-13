layout force-based
applyForceFrom: otherMorphs
	
	self vector: 
		(self vector + "Add the new vector to the old"
		(self totalForceFrom: otherMorphs))
		* SClassDiagram damping.