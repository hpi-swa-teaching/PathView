private
privateMoveBy: delta
	super privateMoveBy: delta.
	self lastTargetPoint: self lastTargetPoint + delta
