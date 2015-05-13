accessing
roots: anArray
	"Overwritten for interchanging PluggableTreeItemNode"
	roots := anArray collect:[:item| SPluggableTreeItemNode with: item model: self].
	self list: roots.