accessing
drawAntialiased: aBoolean
	self setProperty: #drawAntialiased toValue: (aBoolean or: [ nil ]).
	self changed