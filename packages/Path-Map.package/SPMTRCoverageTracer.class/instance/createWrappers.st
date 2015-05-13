ignore setup/tearDown Code
createWrappers
	super createWrappers.
	self pathMap globalOptions ignoreTracingOfSetUpAndTearDownMethods
		ifTrue: [
			self entryPoints do: [:each | 
				(self testCaseSuperClassesOf: each) do: [:klass | 
					self 
						createDeactivationWrapperFor: #setUp in: klass;
						createDeactivationWrapperFor: #tearDown in: klass]]].
