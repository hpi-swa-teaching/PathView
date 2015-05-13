drawing
drawExpandedFlapOn: aCanvas
	"Icon Background"
	aCanvas 
		fillRectangle: self iconRectangle	
		fillStyle: self fillStyle 
		borderStyle: self borderStyle.	
	"Draw Icon"
	aCanvas image: self flapIcon at: self iconRectangle origin.
	"Main Background"
	aCanvas 
		fillRectangle: (self bounds insetOriginBy: 0@0 cornerBy: self class iconOffset@0)  		
		fillStyle: self fillStyle 
		borderStyle: self borderStyle.
	"Left Border to System Window"
	aCanvas 
		fillRectangle: (self bounds origin 
						corner: ((self bounds origin x + 2)@(self bounds corner y))) 
		color: self color.