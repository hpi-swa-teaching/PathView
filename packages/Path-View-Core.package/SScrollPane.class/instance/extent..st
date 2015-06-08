initialization
extent: aValue

	| old |
	old := self bounds.
	super extent: aValue.
	Transcript show: old asString, ' ', self bounds asString; cr.