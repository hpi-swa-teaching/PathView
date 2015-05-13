spec commands
setConcernGroup: aConcernGroup
	self 
		concernGroup: aConcernGroup;
		changed: #allConcerns;
		redrawPathMapIfPossible.
	