class tests
test05AllClassesWithoutTests

	self assert: self project allClassesWithoutTests = 
	{ClockTimer. Driver. Observer. SAnalogClock. SDigitalClock. SVisibleClock. Subject}.