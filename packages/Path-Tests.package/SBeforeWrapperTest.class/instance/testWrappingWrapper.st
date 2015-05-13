tests
testWrappingWrapper

	| wrappers |
	wrappers := OrderedCollection new.
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers first install.
	wrappers  second install.
	wrappers third install.
	self checkWrapperChain: #(Wrapper Wrapper Wrapper Original) of: self methodRef.
	self assert: wrappers third wrappingWrapper = nil.
	self assert: wrappers second wrappingWrapper = wrappers third.
	self assert: wrappers first wrappingWrapper = wrappers second.
	wrappers second uninstall.
	self assert: wrappers second wrappingWrapper = nil.
	self assert: wrappers first wrappingWrapper = wrappers third.