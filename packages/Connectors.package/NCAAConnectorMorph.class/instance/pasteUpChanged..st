event handling
pasteUpChanged: newPasteUp
	self needsOwnerSet: true.
	constraints do: [ :ea | ea forceRedraw ]
