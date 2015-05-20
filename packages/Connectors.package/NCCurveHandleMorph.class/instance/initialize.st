initialization
initialize
	super initialize.
	self extent: 10@10.
	offset := 0@0.
	self on: #mouseDown send: #startHandleDrag: to: self.
	self on: #mouseUp send: #stopHandleDrag: to: self.
	self on: #mouseMove send: #handleMove: to: self.