toolbar-actions
toggleLabels

	self labelsHidden: self labelsHidden not.
	self classMorphs do: [ :classMorph |
		classMorph showLabels: self labelsHidden not.
		classMorph labelHidden: self labelsHidden not
	]
