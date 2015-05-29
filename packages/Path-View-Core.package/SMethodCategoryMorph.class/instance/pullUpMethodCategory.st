reengineering
pullUpMethodCategory
	
	SRefactoring execute:
		(PullUpMethodRefactoring 
			pullUp: self selectorsInCategory
			from: self visualizedClass).