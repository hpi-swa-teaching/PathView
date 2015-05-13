helper
deactivateDuring: aBlock
	self deactivate.
	[aBlock value] 
		ensure: [self activate].