attachments
endShapeColor
	^self valueOfProperty: #endShapeColor ifAbsent: [
		owner ifNotNil: [ owner color ]
			ifNil: [ Color black ]
	 ].