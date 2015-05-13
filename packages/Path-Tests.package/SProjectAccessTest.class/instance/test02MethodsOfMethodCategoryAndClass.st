method category tests
test02MethodsOfMethodCategoryAndClass

	self assert: (self project methodsPerClass: Subject andMethodCategory: #observation) =   #(#attach: #detach: #notify).
	self assert: (self project methodsPerClass: SVisibleClock andMethodCategory: #'instance creation (class)') =   #(#newOn:inFrame: #on:).