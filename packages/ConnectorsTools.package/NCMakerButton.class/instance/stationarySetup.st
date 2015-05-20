initialization
stationarySetup
	"Initialize me for a parts bin"
	super stationarySetup.
	self actWhen: #buttonUp;
		hResizing: #rigid;
		vResizing: #rigid;
		dropEnabled: true;
		dragEnabled: true.
	self on: #mouseEnterDragging send: #borderThick to: self.
