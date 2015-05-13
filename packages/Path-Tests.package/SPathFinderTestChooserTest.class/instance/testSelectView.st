testing
testSelectView

	self assert: self getTestModel tracer viewMode == #classes.
	self getTestModel selectObjectView.
	self assert: self getTestModel tracer viewMode == #objects.
	self getTestModel selectIdentityView.
	self assert: self getTestModel tracer viewMode == #identities.