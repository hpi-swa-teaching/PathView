checking
isReturningSelf: aMethodReference
	| method |
	method := aMethodReference compiledMethod.
	"^ method isReturnSelf or: [method scanFor: 16r78]"
	^ method isReturnSelf