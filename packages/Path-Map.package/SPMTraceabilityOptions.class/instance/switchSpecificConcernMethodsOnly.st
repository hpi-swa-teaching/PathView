spec commands
switchSpecificConcernMethodsOnly
	self 
		specificConcernMethodsOnly: self specificConcernMethodsOnly not;
		changed: #specificConcernMethodsOnly;
		redrawPathMapIfPossible.