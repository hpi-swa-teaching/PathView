running
aboutToCreateClassMorphFor: aTestClass
	"We have to add methods now, otherwise the container won't be visible and expanding will not find it"
	self class testClassMethods keysAndValuesDo: [:methodName :methodSource |
		aTestClass compile: methodSource classified: self class testClassMethodsCategory ].