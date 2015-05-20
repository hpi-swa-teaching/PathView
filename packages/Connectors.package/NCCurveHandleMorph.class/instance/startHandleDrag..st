event handling
startHandleDrag: evt
	evt hand newMouseFocus: self.
	self center: evt position.
	desiredPoint := getPoint value.
	offset := desiredPoint - evt position.
	dragStartPoint := evt position.
	self triggerEvent: #dragStart.