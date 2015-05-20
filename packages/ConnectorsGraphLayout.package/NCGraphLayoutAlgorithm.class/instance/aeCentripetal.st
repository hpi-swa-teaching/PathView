aesthetics
aeCentripetal
	"I am an aesthetic that causes nodes to fly outwards from the centroid.
	My magnitude is 1/d^2, where d is the magnitude of the distance
	between nodes and the centroid.
	Since I consider all nodes, my time complexity is O(|V|)"

	| centroid centers retval |
	retval := OrderedCollection new.
	centers := self nodes collect: [:ea | ea center asFloatPoint].
	centroid := centers average.
	centers do: 
			[:center | 
			| delta mag2 |
			delta := center - centroid.
			delta := delta / scale.
			mag2 := delta x * delta x + (delta y * delta y) max: 1.0e-8.
			retval := retval , { 
								1.0 / mag2 * delta}].
	^retval