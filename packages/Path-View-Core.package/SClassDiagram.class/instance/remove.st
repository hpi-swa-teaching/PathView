menu-actions
remove
	self savedVersion ifNotNil: [
		self removeView: savedName].
	self makeDirty.