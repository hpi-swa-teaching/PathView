testing
setUp

	super setUp.
	self tracer traceTest: self class test actualClass method: self class test selector.
	self callTree: self tracer callTreeModel.