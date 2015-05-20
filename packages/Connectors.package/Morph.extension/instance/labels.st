*connectors-labels
labels
	"Answer the NCLabelMorphs that are tied to me"
	^ self connectedConstraints select: [ :ea | ea isLabelConstraint ] thenCollect: [ :ea | ea drawingElement ]