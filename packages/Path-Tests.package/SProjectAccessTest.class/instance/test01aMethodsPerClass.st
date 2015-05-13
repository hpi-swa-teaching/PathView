method tests
test01aMethodsPerClass
	
	self assert: (self project methodsPerClass: ClockTimer) = 
		#(#hour #hour: #initialize #minute #minute: #second #second: #tick)