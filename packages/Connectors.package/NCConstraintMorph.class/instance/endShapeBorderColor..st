attachments
endShapeBorderColor: aColor
	self submorphsDo: [ :ea | ea allMorphsDo: [ :sm | sm endShapeBorderColor: aColor ] ].
	self setProperty: #endShapeBorderColor toValue: aColor.