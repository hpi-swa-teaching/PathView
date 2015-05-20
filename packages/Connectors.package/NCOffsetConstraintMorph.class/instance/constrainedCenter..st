constraints
constrainedCenter: aPoint
	"Make sure that I stay within my owner's bounds. Answer a new center position"

	| newCenter newBounds myPU |
	myPU := self pasteUpMorph.
	newCenter := aPoint + offset.
	self isFlexed ifFalse: [
	newBounds := bounds translateBy: newCenter - self center.
	myPU
		ifNotNil: [ newCenter := newCenter + (newBounds amountToTranslateWithin: myPU bounds)].
	].
	^newCenter
