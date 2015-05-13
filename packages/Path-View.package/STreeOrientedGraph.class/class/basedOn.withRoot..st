instance creation
basedOn: aTreeRuleBlock withRoot: aNode
	
	^ self new root: aNode; treeRuleBlock: aTreeRuleBlock; yourself