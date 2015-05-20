aesthetics
aeNodeRepulsion
	"I am an aesthetic that attempts to keep nodes apart. My magnitude is 1/d^2, where d is the magnitude of the distance between nodes. Since I consider all node combinations, my time complexity is O(|V|^2)"

	| retval |
	retval := Array new: self nodes size withAll: 0.0 @ 0.0.
	(1 to: self nodes size) combinations: 2
		atATimeDo: 
			[:arr | 
			| ai1 ai2 node otherNode delta mag2 force |
			node := self nodes at: (ai1 := arr at: 1).
			otherNode := self nodes at: (ai2 := arr at: 2).
			delta := (node center - otherNode center) asFloatPoint.
			delta := delta / scale.
			mag2 := delta x * delta x + (delta y * delta y) max: 1.0e-8.
			force := 1.0 / mag2 * delta.
			retval at: ai1 put: (retval at: ai1) + force.
			retval at: ai2 put: (retval at: ai2) - force].
	^retval