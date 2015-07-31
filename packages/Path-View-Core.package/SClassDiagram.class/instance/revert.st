menu-actions
revert
	
	self savedVersion ifNil: [^ self error: 'No saved version to revert to, sorry.'].
	self close.
	self openSaved: self savedName