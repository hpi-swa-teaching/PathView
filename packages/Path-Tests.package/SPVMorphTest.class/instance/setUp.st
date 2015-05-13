running
setUp

	klass := (Smalltalk at: (self class name copyReplaceAll: 'Test' with: '') asSymbol).
	self
		setUpTestClass;
		setUpAssociatedTestClass;
		setUpSProject.