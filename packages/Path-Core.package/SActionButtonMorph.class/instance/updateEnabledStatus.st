accessing
updateEnabledStatus
	self enabled: (self enabledSelector ifNotNil: [self actionModel perform: self enabledSelector] ifNil:[true]).