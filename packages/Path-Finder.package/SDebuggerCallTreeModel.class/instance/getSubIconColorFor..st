icons
getSubIconColorFor: aCallNode
	| suspicious |
	suspicious := self getMostSuspicousDescendentFor: aCallNode.
	
	suspicious ifNil: [^nil].
	
	^self getIconColorFor: suspicious.