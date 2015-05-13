event handling
mouseEnterDragging: anEvent
	"Highlight this class-morph, if the dragged morph could be dropped into it.
	We store the current highlight, to restore it after the mouse leaves us."
	
	anEvent hand submorphs ifNotEmptyDo: [ :submorphs |
		(self wantsDroppedMorph: submorphs first event: anEvent)
			ifTrue: [ 
				oldHighlightColor := highlightColor.
				self highlight: (Color yellow alpha: 0.2) ] ].