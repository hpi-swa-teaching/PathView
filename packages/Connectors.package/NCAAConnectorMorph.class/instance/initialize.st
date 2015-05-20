initialization
initialize
	super initialize.
	super color: Color transparent.
	line := self class defaultLineClass vertices: { 0@0 . 50@0 } color: Color blue borderWidth: 2 borderColor: Color black.
	constraints := Array new: 2.
	constraints at: 1 put: ((self class defaultLineEndConstraintClass  new line: line firstVertex: true otherMorph: nil)
		center: 0@0;
		lastTargetPoint: 0@0;
		yourself).
	constraints at: 2 put: ((self class defaultLineEndConstraintClass new line: line firstVertex: false otherMorph: nil)
		center: line vertices second;
		lastTargetPoint: line vertices second;
		yourself).
	self addAllMorphs: constraints.
	self addMorphBack: line.
	self preferredEndConnection: #connectToNearestPointToCenter.
	self initializeFSM.
