geometry
extendDiagramAreaTo: newBounds

	| bounds offset |
	bounds := self boundsInWorld.
	offset := self class extensionOffset.
	(bounds top > newBounds top) ifTrue: [ self extendTopBy: (bounds top - newBounds top) with: offset].
	(bounds bottom < newBounds bottom) ifTrue:  [self extendBottomBy: (newBounds bottom - bounds bottom) with: offset].
	(bounds left > newBounds left) ifTrue: [self extendLeftBy: (bounds left - newBounds left) with: offset].
	(bounds right < newBounds right) ifTrue: [self extendRightBy: (newBounds right - bounds right) with: offset].
	