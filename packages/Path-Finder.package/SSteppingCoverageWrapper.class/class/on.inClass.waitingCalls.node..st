instance creation
on: aSymbol inClass: aClass waitingCalls: aNumber node: aCallNode 
	| wrapper |
	wrapper := self
				on: aSymbol
				inClass: aClass
				waitingCalls: aNumber.
	wrapper
		ifNotNil: [wrapper
					callNode: aCallNode;
				 	createChildNodeWrappers].
	^ wrapper