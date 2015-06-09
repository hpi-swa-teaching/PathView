layout and labels
recursivelyExpandMorphs
	
	self expandMorphs.
	self entries select: #isExpandable thenDo: #recursivelyExpandMorphs.