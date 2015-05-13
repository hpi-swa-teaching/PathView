visualization
visualizeAllInformation
	"Adjust brightness of all covered morphs as now all failing tests are known"
	self 
		visualizeFaultLocalization: self getAllCoveredMethods;
		visualizeAllTestResults.