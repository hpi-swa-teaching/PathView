classes
allMethodReferencesOf: aClass
	^ (aClass selectors 
		collect: [:each | MethodReference class: aClass selector: each]),
	 (aClass class selectors 
		collect: [:each | MethodReference class: aClass class selector: each])