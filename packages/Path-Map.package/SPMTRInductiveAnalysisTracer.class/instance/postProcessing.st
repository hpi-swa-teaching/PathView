tracing
postProcessing
	self testRunner updateResults.
	self harvester bucket postProcessing.
	self project harvestedBuckets 
		at: self harvester class identifier 
		put: self harvester bucket.
	self harvester class visualizeResultsOn: self pathMap.
	self pathMap selectedOptions changed: #isAddingContractsPossible.