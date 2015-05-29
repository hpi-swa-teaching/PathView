accessing
scale: aNumber
	
	| oldScale |
	oldScale := self scale.
	super scale: aNumber.
	scaleChangeBlock ifNotNil: [ scaleChangeBlock value: oldScale value: self scale ].