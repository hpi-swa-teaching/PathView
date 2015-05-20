connection
connectToAbsolutePoint: aPoint

	self constraint:
		(MessageSend receiver: self selector: #absolutePoint:whileConnectedTo: argument: aPoint)