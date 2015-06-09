layout
prepareEdgeLayout
	
	super prepareEdgeLayout.
	graph nodes do: #prepareEdgeLayout. "Its ok that this is called multiple times on the same edge."