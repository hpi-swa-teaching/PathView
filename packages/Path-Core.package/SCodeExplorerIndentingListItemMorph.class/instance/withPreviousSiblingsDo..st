siblings
withPreviousSiblingsDo: aBlock
	"Iterate also previous siblings"
	| node |
	node := self.
	[node isNil] whileFalse: [
		aBlock value: node.
		node := node previousSibling
	].