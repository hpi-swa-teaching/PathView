tests
testAccessCompiledMethod

	| wrappers |
	wrappers := OrderedCollection new.
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers first install.
	wrappers  second install.
	wrappers third install.
	self checkWrapperChain: #(Wrapper Wrapper Wrapper Original) of: self methodRef.
	self assert: wrappers third unwrappedMethod = originalMethod.