submorphs-add/remove
delete
	
	self stopLayouting.
	SReleaseSystemEventsVisitor visitAll: self classMorphs.
	super delete.