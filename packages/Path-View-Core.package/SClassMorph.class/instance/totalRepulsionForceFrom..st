layout force-based
totalRepulsionForceFrom: otherMorphs  
	
	^ otherMorphs
		inject: 0@0
		into: [ :totalForce :otherMorph | totalForce + (self repulsionFrom: otherMorph) ]