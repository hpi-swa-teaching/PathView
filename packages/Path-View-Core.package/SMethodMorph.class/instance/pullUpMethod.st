reengineering
pullUpMethod
	
	SRefactoring execute:
		(PullUpMethodRefactoring 
			pullUp: { self methodName }
			from: self visualizedClass).