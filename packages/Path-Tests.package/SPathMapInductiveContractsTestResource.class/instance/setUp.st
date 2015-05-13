running
setUp
	super setUp.
	self pathMap model runAll.	
	self pathMap model pathMap selectedOptions 
		setKindOfAnalysis: SValueRangeHarvester.
	self pathMap model runAll.