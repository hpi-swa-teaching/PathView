accessing
graph: anObject
	"This is the initialization routine. Tell all elements in the contained graph, that the receiver is their direct containing subgraphNode."
	
	graph := anObject.
	graph elements do: [ :element | element subgraphNode: self ].