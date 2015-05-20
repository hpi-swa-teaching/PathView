event handling
trigger: type with: argument
	self deferEvent: (QEvent type: type arguments: { argument })