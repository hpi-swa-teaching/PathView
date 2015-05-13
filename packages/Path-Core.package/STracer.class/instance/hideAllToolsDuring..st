helper
hideAllToolsDuring: aBlock
	| windows |
	windows := (SystemWindow allSubInstances select: [:each | each visible]).
	windows do: [:each | each hide].
	World restoreDisplay.
	^ aBlock 
		ensure: [
			windows do: [:each | each show].
			World restoreDisplay.].