drawing
drawOn: aCanvas

	self hasAnyInputs ifFalse: [
			aCanvas fillRectangle: ((Rectangle center: self lastTargetPoint extent: 10@10) intersect: self bounds)
			fillStyle: self fillStyle.
	]