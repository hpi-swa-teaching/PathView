attachments-nk
attachUnobnoxiouslyTo: aMorph at: aPoint
	"If the attachment would make me overlap aMorph, move me away from aMorph's center."
 	| incr limit newBounds |
	self offset: 0@0.
	self center: aPoint.
	self attachTo: aMorph at: aPoint.	"sets constraint block"
	incr := 0@1.
	limit := 2000.
	newBounds := self bounds.
	[ limit < 0 or: [ incr isZero ] ] whileFalse: [
		incr := aMorph nudgeForLabel: newBounds.
		limit := limit - 1.
		newBounds := newBounds translateBy: incr.
	].
	self position: newBounds origin.
	self setOffset.