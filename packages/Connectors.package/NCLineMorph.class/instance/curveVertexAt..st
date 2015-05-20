accessing
curveVertexAt: n
	"Answer the point on the visible curve corresponding to the given vertex."
	| index seg |
	index := (n min: vertices size) max: 1.
	(smoothCurve not  or: [ index = 1 or: [ (index = vertices size) ]]) ifTrue: [ ^vertices at: index ].
	seg := (self segments select: [ :ea | ea isBezier2Segment ]) at: index - 1
		ifAbsent: [ ^vertices first ].
	^seg valueAt: (seg start dist: seg via) / seg length