class tests
test03ClassesOfCategory

	self assert: (self project classesOfCategory: #'Path-Dev-Example-Observer') =  
	{ClockTimer. Driver. Observer. SAnalogClock. SDigitalClock. SVisibleClock. Subject}.