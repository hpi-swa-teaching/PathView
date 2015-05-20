event handling
enterConnected
	self removeShortEndSegments.
	self constraints do: [ :ea | ea startStepping ]