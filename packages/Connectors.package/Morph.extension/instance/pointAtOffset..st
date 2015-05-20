*connectors-geometry
pointAtOffset: aPoint
	^bounds topLeft + ((aPoint x * bounds width) @ (aPoint y * bounds height))