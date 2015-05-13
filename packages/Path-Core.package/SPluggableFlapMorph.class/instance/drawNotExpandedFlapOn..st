drawing
drawNotExpandedFlapOn: aCanvas
	"Icon Background"
	aCanvas 
		fillRectangle: self fullBounds	
		fillStyle: self fillStyle 
		borderStyle: self borderStyle.
	aCanvas image: self flapIcon at: self fullBounds origin.