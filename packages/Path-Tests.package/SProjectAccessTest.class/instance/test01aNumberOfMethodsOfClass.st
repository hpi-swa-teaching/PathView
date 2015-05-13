metric tests
test01aNumberOfMethodsOfClass

	self assert: (self project numberOfMethodsOfClass: Driver) = 2.
	self assert: (self project numberOfMethodsOfClass: Subject) = 4.
	self assert: (self project numberOfMethodsOfClass: ClockTimer) = 8.