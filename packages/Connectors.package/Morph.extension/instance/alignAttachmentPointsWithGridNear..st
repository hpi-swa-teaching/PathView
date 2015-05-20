*connectors-dropping/grabbing
alignAttachmentPointsWithGridNear: aPoint
	"Try to align my AP nearest the grid with the prevailing grid."
	| tweak minDist tweaks best aps |
	aps := self attachmentPoints.
	aps isEmpty ifTrue: [ ^self position: (self griddedPoint: self position) ].
	minDist := 1000.
	tweak := 0@0.
	tweaks := Bag new.
	best := 0@0.
	aps do: [ :ap | | dist |
		dist := ap dist: (self griddedPoint: ap).
		tweak := (self griddedPoint: ap) - ap.
		dist < minDist ifTrue: [ best := tweak ].
		tweaks add: tweak.
	].
	tweaks sortedCounts first key > 1
		ifTrue: [ tweak := tweaks sortedCounts first value ]
		ifFalse: [ tweak := best ].
	self position: (self position + tweak) asIntegerPoint.