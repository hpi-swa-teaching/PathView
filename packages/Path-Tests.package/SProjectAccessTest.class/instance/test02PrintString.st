print tests
test02PrintString

	self assert: self project asString = 'observerExample <current>'.
	SProject addProject: SProject sandboxProject.
	self assert: (SProject projectAt: #sandbox) asString = 'sandbox'.