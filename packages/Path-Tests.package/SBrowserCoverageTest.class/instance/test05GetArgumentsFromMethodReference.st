testing
test05GetArgumentsFromMethodReference
	| arguments |
	arguments := SBrowser new getArgumentsFrom: 
					(MethodReference class: SSBClassA selector: #myValue).
	self assert: arguments isEmpty.
	arguments := SBrowser new getArgumentsFrom: 
					(MethodReference class: SSBClassA selector: #param:method:).
	self 
		assert: arguments notEmpty;
		assert: arguments first = 'anObject';
		assert: arguments second = 'anotherObject'.