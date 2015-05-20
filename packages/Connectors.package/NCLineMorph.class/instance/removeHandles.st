editing
removeHandles
	| handles |
	handles := submorphs select: [ :ea | ea isCurveHandle ].
	self deleteMorphs: handles.