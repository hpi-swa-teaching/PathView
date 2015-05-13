reengineering
pushDownMethodCategory
	
	SRefactoring execute:
		(SPushDownMethodRefactoring 
			pushDown: self selectorsInCategory
			from: self visualizedClass).