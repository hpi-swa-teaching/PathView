refreshing
refreshViewport
	"The changes made here should not affect the viewportDraggingRectangle value, so don't refresh it here."
	
	| scrollerBounds viewportBounds |
	scrollerBounds := scrollPane scroller boundsInWorld.
	viewportBounds := 
		(scrollerBounds topLeft - viewedMorph boundsInWorld topLeft)
			extent: scrollerBounds extent.
	viewportMorph bounds:
		((viewportBounds scaleBy: self zoomedScalingFactor)
			translateBy: self position).