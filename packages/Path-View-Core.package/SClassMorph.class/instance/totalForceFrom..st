layout force-based
totalForceFrom: otherMorphs
	"Calculate the force on morph, based on other morphs repulsing it and connections attracting it."
	
	^ (self totalRepulsionForceFrom: (otherMorphs copyWithout: self))
		+ self totalAttractionForce