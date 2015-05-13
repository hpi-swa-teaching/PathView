running
runInductiveAnalysisWith: aHarvesterClass
	self pathMap model pathMap selectedOptions	setKindOfAnalysis: aHarvesterClass.
	self pathMap model runAll.