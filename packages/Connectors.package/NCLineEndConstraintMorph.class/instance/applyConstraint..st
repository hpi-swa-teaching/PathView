constraints
applyConstraint: anArray 
	"anArray consists of { targetPoint . angle. <input owner identity hash> }"
	| newTargetPoint newPoint oldPoint angle oldOwnerHash |

	oldOwnerHash := self lastTargetOwnerHash.
	newTargetPoint := anArray first.
	angle := anArray second + 90.0.
	newPoint := newTargetPoint.
	"Now compute actual line start"
	lineAttachmentPoint isZero
		ifFalse: [newPoint := newPoint
						+ (lineAttachmentPoint rotateBy: angle negated degreesToRadians about: 0 @ 0).
			newPoint := newPoint rounded].
	oldPoint := constrained vertexAt: self vertexIndex.
	newPoint ~= oldPoint
		ifTrue: [constrained verticesAt: self vertexIndex put: newPoint].
	oldOwnerHash ~= self inputOwnerHash
		ifTrue: [self drawingElement inputOwnerChanged].
	submorphs isEmpty
		ifTrue: [^ self center: newPoint].
	submorphs
		do: [:ea | 
			ea heading: angle.
			ea referencePosition: newTargetPoint].
	lastTargetBounds := nil.
	bounds := self submorphBounds.
	self layoutChanged.
