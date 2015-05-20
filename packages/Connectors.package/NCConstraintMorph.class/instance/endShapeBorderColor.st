attachments
endShapeBorderColor
	^self valueOfProperty: #endShapeBorderColor ifAbsent: [
		owner ifNotNil: [ owner color ]
			ifNil: [ Color black ]
	 ].