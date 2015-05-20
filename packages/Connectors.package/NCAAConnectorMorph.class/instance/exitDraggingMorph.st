event handling
exitDraggingMorph
	self log: #debug items: {'exitDraggingMorph'}.
	self removeShortEndSegments.
	self stopMonitoringEnd.
	Cursor normal show