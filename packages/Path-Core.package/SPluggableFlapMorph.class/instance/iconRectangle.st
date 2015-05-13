accessing
iconRectangle
	^ (self bounds corner x - self class iconOffset)@(self bounds origin y)
			corner: ((self bounds corner x)@(self bounds origin y + self class iconOffset))