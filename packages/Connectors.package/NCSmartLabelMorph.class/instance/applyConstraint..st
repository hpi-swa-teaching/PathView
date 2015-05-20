constraints
applyConstraint: aPoint 
	| input newBounds newCenter |
	(self pasteUpMorph isNil or: [ (input := self input) isNil ])
		ifTrue: [^ super applyConstraint: aPoint].
	"self offset: 0 @ 0."
	newCenter := self constrainedCenter: aPoint.
	newBounds := self visibleBounds translateBy: newCenter - self center.
	self flag: #TODO. "need to deal with flexed labels"
	self isFlexed ifFalse: [
	newBounds := input relocateLabelFrom: newBounds.
	].
	self position: newBounds origin.
