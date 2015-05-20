constraints
needsToApplyConstraintGivenNewTarget: newTarget
	"newTarget has just been returned by 'self target'.
	Do I have to apply the constraint?
	If I return true, applyConstraint: will be called."
	^lastTarget ~= newTarget