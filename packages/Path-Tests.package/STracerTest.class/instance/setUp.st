testing
setUp

	oldCurrentProject := SProject current.
	SProject setCurrent: #sandbox.
	self tracer: (SCallTreeTracer on: SProject current).
	self tracer callTreeModel: (SCallTreeModel on: self tracer).