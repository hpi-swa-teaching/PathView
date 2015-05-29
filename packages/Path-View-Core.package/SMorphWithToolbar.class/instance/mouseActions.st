event handling
mouseActions
	
	^ super mouseActions
		at: #startDrag put: [
			self closeToolbar.
			self currentHand grabMorph: self ];
		at: #mouseEnter put: #hasBeenHovered;
		at: #mouseLeave put: #hasBeenUnhovered;
		yourself