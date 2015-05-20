connection
connectToRelativePoint: relPoint

	self constraint:
		(MessageSend receiver: self selector: #positionRelative:to: argument: relPoint).
