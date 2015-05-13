spec commands
setKindOfAnalysis: aClass
	self 
		kindOfAnalysis: aClass;
		visualizeExistingInformation;
		refreshColorLegend;
		changed: #isAddingContractsPossible.
	