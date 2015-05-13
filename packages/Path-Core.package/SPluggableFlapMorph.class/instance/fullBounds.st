layout
fullBounds
	| b |
	self isExpanded
		ifTrue: [^ super fullBounds]
		ifFalse: [b := super fullBounds.
				^ b origin corner: (b origin x + self class iconOffset) @ 
						     		   (b origin y + self class iconOffset)]