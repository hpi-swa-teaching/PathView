private
resetCallTree

	self tracer ifNil: [^ self].
	self tracer resetCallTree.