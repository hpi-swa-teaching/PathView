event handling
exitDraggingEnd
	| hand |

	self removeDragShadow.
	self stopMonitoringEnd.
	"First, detach any ends that were following the hand."
	constraints
		do: [:ea | ea input
				ifNotNilDo: [:m | m isHandMorph
						ifTrue: [hand := m.
							ea connectToNothing]]].
	hand
		ifNotNil: [hand releaseMouseFocus: self].
	self newCursor: Cursor normal.

	self log: #debug items: {'exitDraggingEnd'. self vertices}.