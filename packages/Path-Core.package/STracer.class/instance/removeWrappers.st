wrapper instrumentation
removeWrappers

	self wrappers do: [:each | each uninstall].
	self wrappers: nil.
	Smalltalk garbageCollect.