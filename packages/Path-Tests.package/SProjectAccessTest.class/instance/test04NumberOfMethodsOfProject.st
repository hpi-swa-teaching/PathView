metric tests
test04NumberOfMethodsOfProject

	self assert: self project numberOfMethods = 30.
	self assert: self project numberOfMethods = 
		(self project allClasses 
			inject: 0 
			into: [:sum :each | sum + each methodDict size + each class methodDict size]).