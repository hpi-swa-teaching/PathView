toolbar-actions
currentZoom
	
	^ (self ownerThatIsA: TransformMorph)
		ifNil: [ 0 ]
		ifNotNilDo: #scale