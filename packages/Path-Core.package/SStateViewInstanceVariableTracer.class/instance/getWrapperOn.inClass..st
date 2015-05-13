wrapper instrumentation
getWrapperOn: aSelector inClass: aClass
	
	self instVarName "self"
		ifNil: [(aClass = self observedClass)
				ifTrue: [^ super getWrapperOn: aSelector inClass: aClass]
				ifFalse: [^ nil]]
		ifNotNil: [
			((aClass whichSelectorsAccess: self instVarName) includes: aSelector)
				ifTrue: [	^ super getWrapperOn: aSelector inClass: aClass]
				ifFalse: [^ nil]]