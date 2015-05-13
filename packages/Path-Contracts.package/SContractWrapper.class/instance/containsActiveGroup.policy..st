execution
containsActiveGroup: aGroup policy: policy
	aGroup isEmpty ifTrue: [^ policy activeGroups includes: #null].
	^  (aGroup anySatisfy: [:group | policy activeGroups includes: group])