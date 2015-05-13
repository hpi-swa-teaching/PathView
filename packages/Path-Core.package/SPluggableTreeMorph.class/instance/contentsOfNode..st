node access
contentsOfNode: node
	"Overwritten for interchanging PluggableTreeItemNode"
	| children |
	self getChildrenSelector ifNil:[^#()].
	children := self model perform: self getChildrenSelector with: node item.
	^children collect:[:item | SPluggableTreeItemNode with: item model: self]