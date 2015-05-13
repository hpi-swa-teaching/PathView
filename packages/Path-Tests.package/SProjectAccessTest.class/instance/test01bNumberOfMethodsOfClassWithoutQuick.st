metric tests
test01bNumberOfMethodsOfClassWithoutQuick

	self assert: (self project numberOfMethodsOfClass: Driver withQuick: false) = 2.
	self assert: (self project numberOfMethodsOfClass: Subject withQuick: false) = 4.
	self assert: (self project numberOfMethodsOfClass: ClockTimer withQuick: false) = 5.