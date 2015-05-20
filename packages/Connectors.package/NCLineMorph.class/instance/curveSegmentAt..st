editing
curveSegmentAt: n 
	^(self vertices at: n) + (self vertices at: (n + 1 min: vertices size)) / 2