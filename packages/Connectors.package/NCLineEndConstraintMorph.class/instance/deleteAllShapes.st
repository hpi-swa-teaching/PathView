submorphs-add/remove
deleteAllShapes
	self submorphs isEmpty ifFalse: [
		self submorphs do: [ :ea | self deleteShape: ea ].
		self preferredConnection: nil
	]
