*Path-Core-override
tryNamedPrimitiveIn: aCompiledMethod for: aReceiver withArgs: arguments
	"Hack. Attempt to execute the named primitive from the given compiled method"
	| selector theMethod spec |
	arguments size > 8 ifTrue:[^PrimitiveFailToken].
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
	theMethod := aReceiver class lookupSelector: selector.
	theMethod == nil ifTrue:[^PrimitiveFailToken].
	spec := theMethod literalAt: 1.
	spec replaceFrom: 1 to: spec size with: (aCompiledMethod literalAt: 1) startingAt: 1.
	theMethod flushCache.
	selector flushCache.
	^aReceiver perform: selector withArguments: arguments