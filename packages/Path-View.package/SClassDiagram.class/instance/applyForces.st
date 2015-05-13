layout force-based
applyForces
	"Calculate the current force for each node and sum up the kinetic energy for each node."
	
	^ classMorphs
		inject: 0
		into: [ :energy :morph |
			energy + (morph
				applyForceFrom: classMorphs;
				kineticEnergy) ]