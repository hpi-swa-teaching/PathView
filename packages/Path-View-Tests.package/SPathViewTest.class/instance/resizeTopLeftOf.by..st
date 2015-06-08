as yet unclassified
resizeTopLeftOf: aMorph by: aPoint
	
	aMorph bounds: (((aMorph bounds topLeft x  + aPoint x) @ (aMorph bounds topLeft y + aPoint y)) corner: aMorph bounds bottomRight).