-- all --
setUp

	self myObject: SClassA new.
	originalMethod := (MethodReference class: SClassA selector: #methodOne) compiledMethod.
	self methodRef: (MethodReference class: SClassA selector: #methodOne).