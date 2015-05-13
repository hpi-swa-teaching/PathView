methods
sayHelloTo: aString
	| obj |
	obj := SHClassB new.
	^ obj addExclamationMarkTo: (obj getHello, Character space, aString)