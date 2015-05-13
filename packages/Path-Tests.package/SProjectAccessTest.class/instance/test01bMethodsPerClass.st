method tests
test01bMethodsPerClass
	
	self assert: (self project methodsPerClass: ClockTimer withQuick: false) = 
		#(#hour: #initialize #minute: #second: #tick)