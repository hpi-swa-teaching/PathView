layout and labels
reexpandLater
	"Memorize, that we are only collapsed, because we contain pinned elements and thus cannot be simply removed."
	
	needReexpand := true.
	self entries do: #hoverOut. "Fix bug with highlight-colors"