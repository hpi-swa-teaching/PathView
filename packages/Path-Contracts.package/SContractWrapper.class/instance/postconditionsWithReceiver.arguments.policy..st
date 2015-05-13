execution
postconditionsWithReceiver: anObject arguments: args policy: policy
	"Dynamic Contract: Invocation of postconditions for executed method"
	(policy postconditionsActive and: 
	[self containsActiveGroup: self postconditionGroups policy: policy]) ifTrue:
		[self afterMethod valueWithReceiver: anObject arguments: args]