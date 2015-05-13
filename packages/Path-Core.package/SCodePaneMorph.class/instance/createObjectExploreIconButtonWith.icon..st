explore buttons
createObjectExploreIconButtonWith: aCollection icon: anIconForm
	| button |
	button := SActionButtonIconMorph 
				on: self 
				selector: #showObjectExploration:title:objectIndex:
				args: aCollection
				icon: anIconForm.
	self addMorph: button.
	button borderWidth: 0.
	^ button