printing
printString
	self isInheritedTest 
		ifTrue: [^ self testClass asString, ' >> ', self selector asString, ' (inherited)'].
	^ (self testClass >> self selector) qualifiedName