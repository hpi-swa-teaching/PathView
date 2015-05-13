pinning
updatePinVisualization
	
	pinned 
		ifTrue: [ ^ self visualizePinState: true ]
		ifFalse: [ ^ self removePinVisualization ]