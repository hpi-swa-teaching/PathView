instance creation
createAListOfAllHarvester
	^ SHarvester withAllSubclasses 
		collect: [:each | {each label. #setKindOfAnalysis:. {each}}].