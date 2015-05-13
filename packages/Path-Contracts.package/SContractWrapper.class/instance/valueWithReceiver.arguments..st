execution
valueWithReceiver: anObject arguments: anArray
	"Dynamic Contracts use this method to enforce contracts on the actual method"
	| policy |
	policy := Processor activeProcess contractExecutionPolicy copy.
	policy ifNotActive: 
		[^ self clientMethod valueWithReceiver: anObject arguments: anArray].
	self requiresOldObject ifTrue: [self oldObject: anObject veryDeepCopy].	
	
	[self 
		invariantsWithReceiver: anObject policy: policy;
		preconditionsWithReceiver: anObject arguments: anArray policy: policy
	] runWithoutContracts.
	
	self result: (self clientMethod valueWithReceiver: anObject arguments: anArray).
	
	[self 
		postconditionsWithReceiver: anObject arguments: anArray policy: policy; 
		invariantsWithReceiver: anObject policy: policy
	] runWithoutContracts.
	
	^ self result