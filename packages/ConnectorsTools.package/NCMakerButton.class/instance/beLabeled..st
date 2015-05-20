accessing
beLabeled: aBoolean
	self setProperty: #labeled toValue: aBoolean.
	self generateThumbnail.
