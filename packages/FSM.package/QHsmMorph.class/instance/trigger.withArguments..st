event handling
trigger: type withArguments: args
	self deferEvent: (QEvent type: type arguments: args)