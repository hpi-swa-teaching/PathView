layout
computeForces
	"Evaluate the weighted sum of my aesthetics, and apply the results to the nodes."

	self clearForces.
	aesthetics do: 
			[:assoc | 
			| weight gradient mag |
			gradient := (self perform: assoc key) asArray.
			weight := assoc value.
			self forces: (self forces with: gradient
						collect: [:prev :delta | prev + (delta * weight)])]