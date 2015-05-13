tests
testInstallationMultipleWrappers

	| wrappers |
	wrappers := OrderedCollection new.
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	wrappers add: (SBeforeWrapper on: #methodOne inClass: SClassA).
	self checkWrapperChain: #(Original) of: self methodRef.
	wrappers first install.
	self checkWrapperChain: #(Wrapper Original) of: self methodRef.
	wrappers  second install.
	self checkWrapperChain: #(Wrapper Wrapper Original) of: self methodRef.
	self assert: self methodRef compiledMethod == wrappers second.
	wrappers third install.
	self checkWrapperChain: #(Wrapper Wrapper Wrapper Original) of: self methodRef.
	self assert: self methodRef compiledMethod == wrappers third.
	self assert: self methodRef compiledMethod clientMethod == wrappers second.
	self assert: self methodRef compiledMethod clientMethod clientMethod  == wrappers first.
	wrappers first uninstall.
	self checkWrapperChain: #(Wrapper Wrapper Original) of: self methodRef.
	self assert: self methodRef compiledMethod == wrappers third.
	self assert: self methodRef compiledMethod clientMethod  == wrappers second.
	wrappers third uninstall.
	self checkWrapperChain: #( Wrapper Original) of: self methodRef.
	self assert: self methodRef compiledMethod == wrappers second.
	wrappers second uninstall.
	self checkWrapperChain: #( Original) of: self methodRef.