private
adjustSubmorphPositions

	super adjustSubmorphPositions.
	scroller submorphsDo: [ :each | 
		each isCodeExplorerIndentingListItemMorph 
			ifTrue: [each adjustCustomMorphs]].