layout and labels
showLabel: showLabels
	"Removed the label if necessary and resize yourself."
	
	^ self
		showSubmorph: indentationMorph
		if: showLabels
		doing: #addMorphFront: