metric tests
test03NumberOfMethodsOfCategory

	self assert: (self project 
					numberOfMethodsOfCategory: #'Path-Dev-Example-Observer') = 27.
	self assert: (self project categories 
					inject: 0 
					into: [:sum :cat | sum := sum + 
							(self project numberOfMethodsOfCategory: cat)]) 
						= self project numberOfMethods.