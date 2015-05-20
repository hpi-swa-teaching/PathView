attachments
endShapeColor: aColor
	self submorphsDo: [ :ea | ea allMorphsDo: [ :sm | sm endShapeColor: aColor ] ].
	self setProperty: #endShapeColor toValue: aColor.