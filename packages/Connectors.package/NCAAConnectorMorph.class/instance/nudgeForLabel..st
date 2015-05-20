connectors-labels
nudgeForLabel: labelBounds
	"First, clear my connected morphs, then clear my line"
	| nudge |
	"self labels do: [ :ea |
		nudge := ea nudgeForLabel: labelBounds.
		nudge isZero ifFalse: [ ^nudge ]
	]."
	self validConnections do: [ :ea |
		nudge := ea nudgeForLabel: labelBounds.
		nudge isZero ifFalse: [ ^nudge ].
	].
	^line nudgeForLabel: labelBounds
