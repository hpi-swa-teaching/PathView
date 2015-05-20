connectors-queries
addedSubmorphs
	"Answer my submorphs other than my line end constraints and line."
	^submorphs reject: [ :ea  | ea == line or: [ ea isConstraint ]].