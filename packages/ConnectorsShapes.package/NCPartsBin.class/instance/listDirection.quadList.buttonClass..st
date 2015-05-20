buttons
listDirection: aListDirection quadList: quadList buttonClass: buttonClass
	super listDirection: aListDirection quadList: quadList buttonClass: buttonClass.
	self enableDrop: true. 
	aListDirection == #leftToRight ifTrue: [ | maxHeight |
		maxHeight := (submorphs collect: [ :ea | ea height ]) max.
		self submorphsDo: [ :ea | ea height: maxHeight ].
	]