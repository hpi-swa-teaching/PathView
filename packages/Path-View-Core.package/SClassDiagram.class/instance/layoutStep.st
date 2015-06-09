layout force-based
layoutStep
	"Calculate the forces applied on each node. Then move the positions of the nodes according to the forces.
	Then check, whether we can stop the layouting, because the total energy is too low."
	
	| totalEnergy |
	classMorphs ifEmpty: [ ^ self stopLayouting ].
	totalEnergy := self applyForces / classMorphs size.
	self moveNodes.
	(layoutingLocked not and: [ totalEnergy < self class minimalKineticEnergy ])
		ifTrue: [ self stopLayouting ].