running
trigger: type withArguments: args
	^self dispatch: (QEvent type: type arguments: args)