initialization
initialize
	super initialize.
	width := 5.
	span := 100.
	hotspot := self center.
	self reset.
	self color: Color blue muchDarker.
	self setBalloonText: 'Drag me to align other Morphs. Drag with the Shift key to move me without affecting other Morphs. Drag me with the second mouse button to align centers.'.
	drawBroomIcon := true.
	transient := false.
	centered := false.
	self filter: [ :m | true ].