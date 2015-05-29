viewport
viewportMoved: anEvent
	"Make sure, that the viewport does not leave the allowed area."
	
	scrollPane scrollInsideBoundsBy: 
		(anEvent position - viewportGrabbingOffset - viewportMorph center) / self zoomedScalingFactor.
	self refreshViewport.