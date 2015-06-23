resizing
resizeBottomRightOf: aMorph by: aPoint
	
	aMorph bounds: ( aMorph bounds topLeft corner: ((aMorph bounds bottomRight x  + aPoint x) @ (aMorph bounds bottomRight y + aPoint y))).