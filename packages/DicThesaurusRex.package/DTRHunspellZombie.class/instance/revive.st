invalidation and reviving
revive
	self class platformSpecificSubclass adoptInstance: self.
	self recreateHandle.
	self reloadIgnoredWords.