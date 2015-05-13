wrapper instrumentation
createWrappers
	self selectedClasses do: [:klass | self createWrapperOn: klass class and: #basicNew].