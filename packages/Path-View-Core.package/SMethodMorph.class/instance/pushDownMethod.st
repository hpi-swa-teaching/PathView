reengineering
pushDownMethod
	
	SRefactoring execute:
		(SPushDownMethodRefactoring 
			pushDown: { self methodName }
			from: self visualizedClass).