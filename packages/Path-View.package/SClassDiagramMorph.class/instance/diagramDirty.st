updating
diagramDirty
	"Sent by different morphs on different events, to indicate the diagram, that it has changed.
	The SDiagramMorph itself can only intercept add/remove morph events."
	
	self diagramParent ifNotNilDo: #makeDirty.