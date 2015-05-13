running
setUp
	super setUp.
	SProject addProject: SProject sandboxProject.
	SProject setCurrent: #sandbox.
	self testRunner: SPathMapTestRunner open.