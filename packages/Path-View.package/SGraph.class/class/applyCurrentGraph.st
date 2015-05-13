debugging
applyCurrentGraph
	"This is used for debugging, to re-layout the last layouted graph. Changes in the layout-algorithm can be quickly visualized this way."
	
	CurrentGraph ifNotNilDo: #applyLayout.