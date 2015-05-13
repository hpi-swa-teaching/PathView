tracing
isOnBlacklist: aMethodReference
	| blacklist |
	blacklist := {MwMethodWrapper. SCallTreeTracer. SCallTreeModel. SNode}.
	^ blacklist anySatisfy: [:each | 
		(aMethodReference actualClass includesBehavior: each) or: 
			[aMethodReference actualClass includesBehavior: each class]].