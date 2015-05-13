wrapper instrumentation
getWrapperOn: aSelector inClass: aClass
	
	((self method actualClass = aClass) and: [self method selector = aSelector])
		ifTrue: [^ self getWrapperClass on: aSelector inClass: aClass with: self].
	^ nil