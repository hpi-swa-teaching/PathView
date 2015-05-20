I am a force-directed algorithm for graph layout.

Given a set of nodes and edges (all Morphs), I move the nodes (and possibly bend the edges) to give the most pleasing result with respect to a set of aesthetics.

These aesthetics have weights.

Subclasses use different strategies to guide this process (for instance, by simulated annealing).

At each step of the algorithm, the morphs are actually moved. This gives visual feedback, but slows down the solution of the layout.

Each of the aesthetics methods answers an IdentityDictionary<Morph->Point>, which represents unweighted (Cartesian) force vectors to apply to the various nodes.

Instance variables:

nodes		<OrderedCollection<Morph>>
	which nodes to move
edges		<OrderedCollection<NCConnectorMorph>>
	the edges to consider
aesthetics	<OrderedCollection<Symbol->weight>>
	the order in which to call various evaluation methods, and the weight to apply to their output force vector
forces		<IdentityDictionary<Morph->Point>>
	the sum of the weighted force vectors, per node