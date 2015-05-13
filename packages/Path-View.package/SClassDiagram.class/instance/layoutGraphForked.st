layout graph-based
layoutGraphForked
	"Perform the layout in a separate thread, so that the morphs already have their positions and extents applied."
	"TODO find a clean way in Morphic to defer the layout until the PasteUpMorph with the graph is fully initialized."
	
	[ (Delay forMilliseconds: 300) wait.
	self layoutGraph ]
		fork.