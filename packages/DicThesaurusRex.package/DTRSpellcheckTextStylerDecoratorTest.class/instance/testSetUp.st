tests
testSetUp
	self
		assert: stubView = sut view description: 'lost view';
		assert: stubParentStyler = sut parentStyler description: 'lost parent styler'