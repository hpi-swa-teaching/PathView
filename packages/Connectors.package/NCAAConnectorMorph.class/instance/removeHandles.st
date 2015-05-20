submorphs-add/remove
removeHandles
	self deleteMorphs: self handles.
	self removeProperty: #showingHandles