curve editing
addHandles
	self setProperty: #oldLayoutPolicy toValue: {self layoutPolicy. self hResizing. self vResizing}.
	self layoutPolicy: nil;
		 hResizing: #rigid;
		 vResizing: #rigid.
	self addAllMorphs: self handles