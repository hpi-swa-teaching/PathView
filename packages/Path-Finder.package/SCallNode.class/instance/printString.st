printing
printString

	 ^ (self callTreeModel printInfosForNode: self), 
		self printProfile, 
		self printView, 
		self printSelector

	