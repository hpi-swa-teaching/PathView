metric tests
test09AllMethodReferncesOfAClass

	self assert: (self project allMethodReferencesOf: Observer) = {
		MethodReference class: Observer selector: #update:.
		MethodReference class: Observer selector: #subject.
		MethodReference class: Observer selector: #subject:.
		MethodReference class: Observer class selector: #on:.
	}.