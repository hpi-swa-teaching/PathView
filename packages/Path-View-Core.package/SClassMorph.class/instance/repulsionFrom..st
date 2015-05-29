layout force-based
repulsionFrom: otherMorph  
	"repulsion-force = repulsion-constant * mass1 * mass2 / distance squared"
	"This value is multiplied with the direction to get the vector."
	
	| vector |
	vector := self vectorTo: otherMorph.
	^ vector normalized
		* (SClassDiagram repulsionConstant
		* otherMorph mass
		* self mass
		/ vector r squared)