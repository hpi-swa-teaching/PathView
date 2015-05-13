accessing
treeRuleBlock: aBlock
	"two-argument block: first the assumed parent node, then a neighbor of it. aBlock returns true, if the assumed parent node really is a parent of this neighbor."
	
	treeRuleBlock := aBlock