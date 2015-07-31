layout and labels
expandMorphs
	"all entries get popped out and diagram extension checks are made"

	expanded := true.
	self entries do: [ :each | 
		self
			removeMorph: each;
			addEntry: each.
		each isExpandable ifTrue: [ each reexpandIfNecessary ].
		each isPinnable ifTrue: [ each updatePinVisualization ] ].
	self entries do: #hoverOut.
	self updateLabel