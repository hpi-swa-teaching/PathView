drawing
toggleRectangle

	self isCodeExpanded ifFalse: [^ super toggleRectangle].
	^(bounds left + (self class indentingPixel * indentLevel)) @ bounds top 
		extent: self class indentingPixel@self class itemHeight