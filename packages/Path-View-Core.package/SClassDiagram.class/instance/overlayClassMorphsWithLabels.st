toolbar-actions
overlayClassMorphsWithLabels
	
	self isZooming 
		ifTrue: [ self classMorphs do: [ :classMorph | classMorph showLabelOverlay ]]
		ifFalse: [ self classMorphs do: [ :classMorph | classMorph hideLabelOverlay ]]

	