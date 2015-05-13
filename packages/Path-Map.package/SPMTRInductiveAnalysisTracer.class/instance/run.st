public api
run
	self harvester class = SHarvester
		ifTrue: [^ self inform: 'Please select a specific harvester.']
		ifFalse: [self hideAllToolsDuring: [super run]].