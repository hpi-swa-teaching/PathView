execution
preconditionsWithReceiver: anObject arguments: args policy: policy
	"Dynamic Contract: Invocation of preconditions for executed method"
	(policy preconditionsActive and: 
	[self containsActiveGroup: self preconditionGroups policy: policy]) ifTrue: 
		[self beforeMethod valueWithReceiver: anObject arguments: args]