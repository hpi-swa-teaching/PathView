explore buttons
createObjectExploreIconButtonWith: aCollection icon: anIconForm at: aPoint with: aString
	| button |
	button := SActionButtonIconMorph 
				on: self 
				selector: #showObjectExploration:title:objectIndex:
				args: aCollection
				icon: anIconForm.
	self addMorph: button.
	button borderWidth: 0.
	button position: aPoint.
	button setBalloonText: aString maxLineLength: 50.
	^ button