initialize-release
postProcessing
	self 
		removeLastObjectsFrom: self arguments;
		removeLastObjectsFrom: self members;
		removeLastObjectsFrom: self returns.
