layout and labels
showLabels: showLabels
	"Do not hide the class-name. But hide the <extends ClassAbc> label."
	
	self
		showSubmorph: entries first
	 	if: showLabels
		doing: #addMorphBack:.