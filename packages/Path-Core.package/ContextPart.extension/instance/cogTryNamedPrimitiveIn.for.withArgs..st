*Path-Core-override
cogTryNamedPrimitiveIn: aCompiledMethod for: aReceiver withArgs: arguments
	| selector theMethod spec receiverClass |
	<primitive: 218 error: ec>
	ec ifNotNil:
		["If ec is an integer other than -1 there was a problem with primitive 218,
		  not with the external primitive itself.  -1 indicates a generic failure (where
		  ec should be nil) but ec = nil means primitive 218 is not implemented.  So
		  interpret -1 to mean the external primitive failed with a nil error code."
		 ec isInteger ifTrue:
			[ec = -1
				ifTrue: [ec := nil]
				ifFalse: [self primitiveFailed]].
		^{PrimitiveFailToken. ec}].
	"Assume a nil error code implies the primitive is not implemented and fall back on the old code."
	"Hack. Attempt to execute the named primitive from the given compiled method"
	arguments size > 8 ifTrue:
		[^{PrimitiveFailToken. nil}].
	selector := #(
		tryNamedPrimitive 
		tryNamedPrimitive: 
		tryNamedPrimitive:with: 
		tryNamedPrimitive:with:with: 
		tryNamedPrimitive:with:with:with:
		tryNamedPrimitive:with:with:with:with:
		tryNamedPrimitive:with:with:with:with:with:
		tryNamedPrimitive:with:with:with:with:with:with:
		tryNamedPrimitive:with:with:with:with:with:with:with:) at: arguments size+1.
	receiverClass := self objectClass: aReceiver.
	theMethod := receiverClass lookupSelector: selector.
	theMethod == nil ifTrue:
		[^{PrimitiveFailToken. nil}].
	spec := theMethod literalAt: 1.
	spec replaceFrom: 1 to: spec size with: (aCompiledMethod literalAt: 1) startingAt: 1.
	Smalltalk unbindExternalPrimitives.
	^self object: aReceiver perform: selector withArguments: arguments inClass: receiverClass