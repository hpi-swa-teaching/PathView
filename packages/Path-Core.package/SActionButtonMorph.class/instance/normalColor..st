accessing
normalColor: aColor
	normalColor := aColor.
	self enabled ifTrue: [super color: aColor] ifFalse: [super color: self disabledColor]. 