*connectors-displaying
flashPoints: points
	| rects |
	rects := points collect: [ :pt | Rectangle center: pt extent: 4@4 ].
	rects do: [ :rect | self reverse: rect ] .
	self forceDisplayUpdate.
	(Delay forMilliseconds: 100) wait.
	rects do: [ :rect | self reverse: rect ] .
	self forceDisplayUpdate.
