pathMap-hooks
getLabelString: aPosition
	^ aPosition y <= 0.5
		ifTrue: ['No types available']
		ifFalse: ['Harvested types']