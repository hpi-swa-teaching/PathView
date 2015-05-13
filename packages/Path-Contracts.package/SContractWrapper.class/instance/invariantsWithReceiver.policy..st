execution
invariantsWithReceiver: anObject policy: policy
	"Dynamic Contract: Invocation of preconditions for executed method"
	(policy invariantsActive and: 
	[self containsActiveGroup: self invariantGroups policy: policy]) ifTrue: 
		[anObject class organization invariantMethod 
			valueWithReceiver: anObject arguments: {}] 