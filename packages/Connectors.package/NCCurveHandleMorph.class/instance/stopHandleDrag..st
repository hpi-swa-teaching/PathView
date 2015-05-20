event handling
stopHandleDrag: evt
	dragStartPoint := desiredPoint := nil.
	evt hand releaseMouseFocus: self.
	self triggerEvent: #dragStop.