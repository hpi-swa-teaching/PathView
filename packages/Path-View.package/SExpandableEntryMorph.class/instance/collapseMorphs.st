layout and labels
collapseMorphs
	"Do several things with different kinds of my submorphs."
		
	self entries
		reject: #needsToBeShown thenDo: #delete;
		select: #isPinnable thenDo: #removePinVisualization;
		select: 	[ :each | each needsToBeShown & each isExpandable and: [ each expanded ] ]
			thenDo: [ :each | each toggleExpansion; reexpandLater ];
		do: #hoverOut.
	self updateLabel.