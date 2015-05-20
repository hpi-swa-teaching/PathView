submorphs-add/remove
addHandles
	self setProperty: #showingHandles toValue: true.
	self deleteMorphs: self handles.
	line handles withIndexDo: [ :h :i |
		h setProperty: #connectorHandle toValue: i.
		self addMorphFront: h.
	].
