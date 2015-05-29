layout and labels
allEntriesCount
	
	^ self categories inject: 0 into: [ :all :each | all + (self methodCountInCategory: each) ]