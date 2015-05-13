stepping and presenter
step
	| topLeft position |

	topLeft := self vertices at: 1.
	position := self globalPointToLocal: self currentHand position.
	self vertices at: 2 put: (topLeft x @ position y).
	self vertices at: 3 put: position. "bottom right"
	self vertices at: 4 put: (position x @ topLeft y). "top right"
	self computeBounds.